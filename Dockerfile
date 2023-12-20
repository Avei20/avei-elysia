FROM oven/bun 

WORKDIR /app

COPY package.json . 
COPY bun.lockb . 

RUN bun install --production 

EXPOSE 8080

COPY src src
COPY tsconfig.json . 

ENV NODE_ENV production
CMD [ "bun", "src/index.ts" ]