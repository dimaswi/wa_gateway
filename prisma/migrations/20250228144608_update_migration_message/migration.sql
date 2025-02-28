/*
  Warnings:

  - You are about to drop the column `published` on the `message` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `message` DROP COLUMN `published`,
    ADD COLUMN `pesan` TEXT NULL;
