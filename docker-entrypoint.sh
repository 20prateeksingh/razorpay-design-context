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

  # design-context/ has to be writable too, and it is worth being precise about why, because the
  # obvious posture (library root-owned, server unprivileged) is actively harmful here.
  #
  # map.js rebuilds the dashboard whenever the designs tree is newer than it. If that rebuild
  # cannot write, it fails, dashboard.html's mtime never advances, and the condition stays true
  # forever: a full 36-page buildIndex is attempted on EVERY request, caught, logged, and thrown
  # away. The failure is silent to a visitor and ruinous to the server.
  #
  # What protects the captured facts is not the file mode. It is that hosted mode refuses every
  # POST, and that the chat's writes are bounded to DESIGNS_DIR by an explicit containment check
  # that refuses to start if that path overlaps design-context/. Within the library itself only
  # build-index writes, and only the files it derives.
  chown -R node:node /app/design-context
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
