FROM node:22-alpine AS build
WORKDIR /build/

COPY src/ ./src/
COPY package-lock.json package.json tsconfig.json ./

RUN npm clean-install --include=dev
RUN npm run build


FROM node:22-alpine
WORKDIR /backend

COPY --from=build /build/dist/ ./
COPY --from=build /build/package-lock.json /build/package.json ./

RUN npm clean-install --omit=dev
RUN rm package.json package-lock.json

COPY <<EOF ./.env
PORT=80
NODE_ENV=production
EOF

EXPOSE 80/tcp

CMD ["/usr/local/bin/node", "server.js"]