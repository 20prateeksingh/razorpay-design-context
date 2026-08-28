#!/bin/sh
# Prepare the designs volume, then drop privileges and serve.
#
# Two things force this script to exist.
#
# A Fly volume is mounted root-owned, and this server runs as the unprivileged `node` user so that
# a process whose whole job is reading a captured library cannot write outside it. Something has to
# run as root once, at boot, to hand the mount to `node` — after that nothing here is privileged.
#
# And the mount lands empty on a brand new volume, so the designs directory has to be created
# before the server looks for it. An empty designs library is a normal state, not an error, but a
# missing directory reads as one.
set -e

DESIGNS="${DCK_DESIGNS_DIR:-/data/wireframes}"

if [ "$(id -u)" = "0" ]; then
  mkdir -p "$DESIGNS"
  chown -R node:node "$DESIGNS"

  # Only the volume is chowned here. design-context/ is handed over at build time instead, because
  # doing it on every boot cost 43 seconds of chown -R over 250MB while the health check failed.
  #
  # That the library is writable at all reads like a regression and is the opposite. map.js rebuilds
  # the dashboard whenever the designs tree is newer than it; a rebuild that cannot write never
  # advances dashboard.html's mtime, so the condition stays true forever and a full 36-page
  # buildIndex is attempted, caught and thrown away on EVERY request. Silent to a visitor, ruinous
  # to the server. What protects the captured facts is that hosted mode refuses every POST, and that
  # the chat's writes are bounded to DESIGNS_DIR by a containment check which refuses to start at
  # all if that path overlaps design-context/.
  # Drop to node if we can. `su` ships in the debian-slim base, but a base image change should
  # degrade to a running server rather than a container that will not boot: a demo that serves
  # as root is a worse posture, a demo that does not start at all is no demo.
  if command -v su >/dev/null 2>&1; then
    exec su node -s /bin/sh -c 'exec node /app/tools/map.js'
  fi
  echo "warning: su not found, serving as root" >&2
  exec node /app/tools/map.js
fi

# Already unprivileged (a local `docker run --user`), so there is nothing to hand over.
mkdir -p "$DESIGNS"
exec node /app/tools/map.js
