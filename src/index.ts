import { Elysia } from "elysia";

const app = new Elysia().get("/", () => "Hello Elysia").listen(parseInt(process.env.PORT as string));

console.log(
  `🦊 Elysia is running at ${app.server?.hostname}:${app.server?.port}`
);
