import { PrismaClient } from "@prisma/client";

declare global {
  var prisma: PrismaClient | undefined;
}

export const db = globalThis.prisma || new PrismaClient();

if (process.env.NODE_ENV !== "production") globalThis.prisma = db;


// export const db = new PrismaClient();

// this above can be used directly but it cause crash and overflow
// while development(everytime we save it cause a form a new client instance).
//  globalThis is not affected by hot reload so less burden and crashing.works same as above in production