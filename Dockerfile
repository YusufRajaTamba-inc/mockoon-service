FROM node:24-alpine

RUN npm install -g @mockoon/cli

WORKDIR /app

COPY mockoon/environment.json /app/mockoon/environment.json

ENV PORT=3002

EXPOSE 3002

ENTRYPOINT ["sh", "-c", "mockoon-cli start --data /app/mockoon/environment.json --disable-log-to-file --port ${PORT}"]