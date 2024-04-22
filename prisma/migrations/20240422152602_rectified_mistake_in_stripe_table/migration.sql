/*
  Warnings:

  - You are about to drop the column `stripeCustomeId` on the `StripeCustomer` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[userId,courseId]` on the table `Purchase` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[stripeCustomerId]` on the table `StripeCustomer` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `stripeCustomerId` to the `StripeCustomer` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX "StripeCustomer_stripeCustomeId_key";

-- AlterTable
ALTER TABLE "StripeCustomer" DROP COLUMN "stripeCustomeId",
ADD COLUMN     "stripeCustomerId" TEXT NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "Purchase_userId_courseId_key" ON "Purchase"("userId", "courseId");

-- CreateIndex
CREATE UNIQUE INDEX "StripeCustomer_stripeCustomerId_key" ON "StripeCustomer"("stripeCustomerId");
