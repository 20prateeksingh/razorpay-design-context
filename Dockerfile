# Hosted, read-only Design Context Kit.
#
# Serving the library needs no npm package at all: tools/map.js is bare node:http, and its one
# `require('playwright')` sits inside a try/catch behind an endpoint hosted mode refuses. The chat
# panel is the exception, so exactly two packages are installed and nothing else.
#
# Deliberately NOT `npm ci`. tools/package.json also lists playwright and js-beautify, which the
# capture step needs and this image must never run: hosted mode refuses every capture endpoint, so
# shipping a browser-automation library into a read-only server would add tens of megabytes and a
# large attack surface to hold code that cannot execute. Both packages are pinned exactly rather
# than by range, because chat.js depends on cheerio's `_useHtmlParser2` option: parse5, cheerio's
# default parser, allocates 752MB of heap on the 24MB x-corporate-cards snapshot against
# htmlparser2's 3.5MB. A silent minor-version change there is an out-of-memory kill on this VM.
#
# Nothing in this image can capture, crawl, log in or write to the library. See DCK_HOSTED in
# tools/map.js for exactly what that means.
FROM node:20-slim

ENV NODE_ENV=production \
    DCK_HOSTED=1 \
    PORT=8080

WORKDIR /app

# Server code first, then its two packages, then the library. Ordered so that re-capturing the
# library — the thing that changes most often — rebuilds only the last and heaviest layer.
COPY tools/ ./tools/
COPY skills/ ./skills/
RUN npm install --prefix tools --no-save --no-audit --no-fund --omit=optional \
      @anthropic-ai/sdk@0.122.0 cheerio@1.2.0 \
 && npm cache clean --force

# The captured library is the bulk of this image (~250MB) and is deliberately baked in rather than
# mounted: the demo has to open instantly and must not depend on a volume or a network fetch.
COPY design-context/ ./design-context/
COPY AGENTS.md CLAUDE.md README.md LICENSE ./

# Run as the unprivileged user the base image already provides. The process only ever reads.
USER node

EXPOSE 8080

HEALTHCHECK --interval=30s --timeout=4s --start-period=10s --retries=3 \
  CMD node -e "require('http').get('http://127.0.0.1:'+(process.env.PORT||8080)+'/api/ping',r=>process.exit(r.statusCode===200?0:1)).on('error',()=>process.exit(1))"

CMD ["node", "tools/map.js"]
