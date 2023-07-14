/*
  Warnings:

  - You are about to drop the column `projectID` on the `Task` table. All the data in the column will be lost.
  - Added the required column `projectId` to the `Task` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Task" DROP CONSTRAINT "Task_projectID_fkey";

-- AlterTable
ALTER TABLE "Task" DROP COLUMN "projectID",
ADD COLUMN     "projectId" TEXT NOT NULL;

-- AddForeignKey
ALTER TABLE "Task" ADD CONSTRAINT "Task_projectId_fkey" FOREIGN KEY ("projectId") REFERENCES "Project"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
