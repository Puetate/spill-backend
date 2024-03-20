/*
  Warnings:

  - You are about to drop the column `userOrigin` on the `Additional` table. All the data in the column will be lost.
  - You are about to drop the column `userOrigin` on the `Article` table. All the data in the column will be lost.
  - You are about to drop the column `userOrigin` on the `ArticleType` table. All the data in the column will be lost.
  - You are about to drop the column `userOrigin` on the `AttendanceControl` table. All the data in the column will be lost.
  - You are about to drop the column `userOrigin` on the `Client` table. All the data in the column will be lost.
  - You are about to drop the column `userOrigin` on the `ClientType` table. All the data in the column will be lost.
  - You are about to drop the column `userOrigin` on the `CustomizeOrder` table. All the data in the column will be lost.
  - You are about to drop the column `userOrigin` on the `EmbroideryDetail` table. All the data in the column will be lost.
  - You are about to drop the column `userOrigin` on the `ExitType` table. All the data in the column will be lost.
  - You are about to drop the column `userOrigin` on the `Gift` table. All the data in the column will be lost.
  - You are about to drop the column `userOrigin` on the `Machine` table. All the data in the column will be lost.
  - You are about to drop the column `userOrigin` on the `MachineAdditionalCost` table. All the data in the column will be lost.
  - You are about to drop the column `userOrigin` on the `MachineArticleCost` table. All the data in the column will be lost.
  - You are about to drop the column `userOrigin` on the `Manpower` table. All the data in the column will be lost.
  - You are about to drop the column `userOrigin` on the `ManpowerAdditional` table. All the data in the column will be lost.
  - You are about to drop the column `userOrigin` on the `ManpowerMachine` table. All the data in the column will be lost.
  - You are about to drop the column `userOrigin` on the `MoneyOrder` table. All the data in the column will be lost.
  - You are about to drop the column `userOrigin` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `userOrigin` on the `OrderDetail` table. All the data in the column will be lost.
  - You are about to drop the column `userOrigin` on the `OrderGift` table. All the data in the column will be lost.
  - You are about to drop the column `userOrigin` on the `Person` table. All the data in the column will be lost.
  - You are about to drop the column `userOrigin` on the `Role` table. All the data in the column will be lost.
  - You are about to drop the column `userOrigin` on the `Sex` table. All the data in the column will be lost.
  - You are about to drop the column `userOrigin` on the `Size` table. All the data in the column will be lost.
  - You are about to drop the column `userOrigin` on the `SublimatedDetail` table. All the data in the column will be lost.
  - You are about to drop the column `userOrigin` on the `Supplier` table. All the data in the column will be lost.
  - You are about to drop the column `userOrigin` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `userOrigin` on the `UserRoles` table. All the data in the column will be lost.
  - You are about to drop the column `userOrigin` on the `WorkerType` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Additional" DROP COLUMN "userOrigin",
ALTER COLUMN "userCreated" DROP NOT NULL;

-- AlterTable
ALTER TABLE "Article" DROP COLUMN "userOrigin",
ALTER COLUMN "userCreated" DROP NOT NULL;

-- AlterTable
ALTER TABLE "ArticleType" DROP COLUMN "userOrigin",
ALTER COLUMN "userCreated" DROP NOT NULL;

-- AlterTable
ALTER TABLE "AttendanceControl" DROP COLUMN "userOrigin",
ALTER COLUMN "userCreated" DROP NOT NULL;

-- AlterTable
ALTER TABLE "Client" DROP COLUMN "userOrigin",
ALTER COLUMN "userCreated" DROP NOT NULL;

-- AlterTable
ALTER TABLE "ClientType" DROP COLUMN "userOrigin",
ALTER COLUMN "userCreated" DROP NOT NULL;

-- AlterTable
ALTER TABLE "CustomizeOrder" DROP COLUMN "userOrigin",
ALTER COLUMN "userCreated" DROP NOT NULL;

-- AlterTable
ALTER TABLE "EmbroideryDetail" DROP COLUMN "userOrigin",
ALTER COLUMN "userCreated" DROP NOT NULL;

-- AlterTable
ALTER TABLE "ExitType" DROP COLUMN "userOrigin",
ALTER COLUMN "userCreated" DROP NOT NULL;

-- AlterTable
ALTER TABLE "Gift" DROP COLUMN "userOrigin",
ALTER COLUMN "userCreated" DROP NOT NULL;

-- AlterTable
ALTER TABLE "Machine" DROP COLUMN "userOrigin",
ALTER COLUMN "userCreated" DROP NOT NULL;

-- AlterTable
ALTER TABLE "MachineAdditionalCost" DROP COLUMN "userOrigin",
ALTER COLUMN "userCreated" DROP NOT NULL;

-- AlterTable
ALTER TABLE "MachineArticleCost" DROP COLUMN "userOrigin",
ALTER COLUMN "userCreated" DROP NOT NULL;

-- AlterTable
ALTER TABLE "Manpower" DROP COLUMN "userOrigin",
ALTER COLUMN "userCreated" DROP NOT NULL;

-- AlterTable
ALTER TABLE "ManpowerAdditional" DROP COLUMN "userOrigin",
ALTER COLUMN "userCreated" DROP NOT NULL;

-- AlterTable
ALTER TABLE "ManpowerMachine" DROP COLUMN "userOrigin",
ALTER COLUMN "userCreated" DROP NOT NULL;

-- AlterTable
ALTER TABLE "MoneyOrder" DROP COLUMN "userOrigin",
ALTER COLUMN "userCreated" DROP NOT NULL;

-- AlterTable
ALTER TABLE "Order" DROP COLUMN "userOrigin",
ALTER COLUMN "userCreated" DROP NOT NULL;

-- AlterTable
ALTER TABLE "OrderDetail" DROP COLUMN "userOrigin",
ALTER COLUMN "userCreated" DROP NOT NULL;

-- AlterTable
ALTER TABLE "OrderGift" DROP COLUMN "userOrigin",
ALTER COLUMN "userCreated" DROP NOT NULL;

-- AlterTable
ALTER TABLE "Person" DROP COLUMN "userOrigin",
ALTER COLUMN "userCreated" DROP NOT NULL;

-- AlterTable
ALTER TABLE "Role" DROP COLUMN "userOrigin",
ALTER COLUMN "userCreated" DROP NOT NULL;

-- AlterTable
ALTER TABLE "Sex" DROP COLUMN "userOrigin",
ALTER COLUMN "userCreated" DROP NOT NULL;

-- AlterTable
ALTER TABLE "Size" DROP COLUMN "userOrigin",
ALTER COLUMN "userCreated" DROP NOT NULL;

-- AlterTable
ALTER TABLE "SublimatedDetail" DROP COLUMN "userOrigin",
ALTER COLUMN "userCreated" DROP NOT NULL;

-- AlterTable
ALTER TABLE "Supplier" DROP COLUMN "userOrigin",
ALTER COLUMN "userCreated" DROP NOT NULL;

-- AlterTable
ALTER TABLE "User" DROP COLUMN "userOrigin",
ALTER COLUMN "userCreated" DROP NOT NULL;

-- AlterTable
ALTER TABLE "UserRoles" DROP COLUMN "userOrigin",
ALTER COLUMN "userCreated" DROP NOT NULL;

-- AlterTable
ALTER TABLE "WorkerType" DROP COLUMN "userOrigin",
ALTER COLUMN "userCreated" DROP NOT NULL;
