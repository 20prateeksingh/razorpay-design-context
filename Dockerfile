# Hosted, read-only Design Context Kit.
#
# The dashboard server (tools/map.js) is bare node:http and pulls in no npm package at runtime:
# its one `require('playwright')` sits inside a try/catch, behind an endpoint that hosted mode
# refuses before it is ever reached. So there is no install step here and no node_modules in the
# image — just Node and the captured library.
#
# Nothing in this image can capture, crawl, log in or write to the library. See DCK_HOSTED in
# tools/map.js for exactly what that means.
FROM node:20-slim

ENV NODE_ENV=production \
    DCK_HOSTED=1 \
    PORT=8080

WORKDIR /app

# The captured library is the bulk of this image (~250MB) and is deliberately baked in rather than
# mounted: the demo has to open instantly and must not depend on a volume or a network fetch.
COPY tools/ ./tools/
COPY design-context/ ./design-context/
COPY skills/ ./skills/
COPY AGENTS.md CLAUDE.md README.md LICENSE ./

# Run as the unprivileged user the base image already provides. The process only ever reads.
USER node

EXPOSE 8080

HEALTHCHECK --interval=30s --timeout=4s --start-period=10s --retries=3 \
  CMD node -e "require('http').get('http://127.0.0.1:'+(process.env.PORT||8080)+'/api/ping',r=>process.exit(r.statusCode===200?0:1)).on('error',()=>process.exit(1))"

CMD ["node", "tools/map.js"]
