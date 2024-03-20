/*
  Warnings:

  - Added the required column `dateUpdated` to the `Additional` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userCreated` to the `Additional` table without a default value. This is not possible if the table is not empty.
  - Added the required column `dateUpdated` to the `Article` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userCreated` to the `Article` table without a default value. This is not possible if the table is not empty.
  - Added the required column `dateUpdated` to the `ArticleType` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userCreated` to the `ArticleType` table without a default value. This is not possible if the table is not empty.
  - Added the required column `dateUpdated` to the `AttendanceControl` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userCreated` to the `AttendanceControl` table without a default value. This is not possible if the table is not empty.
  - Added the required column `dateUpdated` to the `Client` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userCreated` to the `Client` table without a default value. This is not possible if the table is not empty.
  - Added the required column `dateUpdated` to the `ClientType` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userCreated` to the `ClientType` table without a default value. This is not possible if the table is not empty.
  - Added the required column `dateUpdated` to the `CustomizeOrder` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userCreated` to the `CustomizeOrder` table without a default value. This is not possible if the table is not empty.
  - Added the required column `dateUpdated` to the `EmbroideryDetail` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userCreated` to the `EmbroideryDetail` table without a default value. This is not possible if the table is not empty.
  - Added the required column `dateUpdated` to the `ExitType` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userCreated` to the `ExitType` table without a default value. This is not possible if the table is not empty.
  - Added the required column `dateUpdated` to the `Gift` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userCreated` to the `Gift` table without a default value. This is not possible if the table is not empty.
  - Added the required column `dateUpdated` to the `Machine` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userCreated` to the `Machine` table without a default value. This is not possible if the table is not empty.
  - Added the required column `dateUpdated` to the `MachineAdditionalCost` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userCreated` to the `MachineAdditionalCost` table without a default value. This is not possible if the table is not empty.
  - Added the required column `dateUpdated` to the `MachineArticleCost` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userCreated` to the `MachineArticleCost` table without a default value. This is not possible if the table is not empty.
  - Added the required column `dateUpdated` to the `Manpower` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userCreated` to the `Manpower` table without a default value. This is not possible if the table is not empty.
  - Added the required column `dateUpdated` to the `ManpowerAdditional` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userCreated` to the `ManpowerAdditional` table without a default value. This is not possible if the table is not empty.
  - Added the required column `dateUpdated` to the `ManpowerMachine` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userCreated` to the `ManpowerMachine` table without a default value. This is not possible if the table is not empty.
  - Added the required column `dateUpdated` to the `MoneyOrder` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userCreated` to the `MoneyOrder` table without a default value. This is not possible if the table is not empty.
  - Added the required column `dateUpdated` to the `Order` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userCreated` to the `Order` table without a default value. This is not possible if the table is not empty.
  - Added the required column `dateUpdated` to the `OrderDetail` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userCreated` to the `OrderDetail` table without a default value. This is not possible if the table is not empty.
  - Added the required column `dateUpdated` to the `OrderGift` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userCreated` to the `OrderGift` table without a default value. This is not possible if the table is not empty.
  - Added the required column `dateUpdated` to the `Role` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userCreated` to the `Role` table without a default value. This is not possible if the table is not empty.
  - Added the required column `dateUpdated` to the `Sex` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userCreated` to the `Sex` table without a default value. This is not possible if the table is not empty.
  - Added the required column `dateUpdated` to the `Size` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userCreated` to the `Size` table without a default value. This is not possible if the table is not empty.
  - Added the required column `dateUpdated` to the `SublimatedDetail` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userCreated` to the `SublimatedDetail` table without a default value. This is not possible if the table is not empty.
  - Added the required column `dateUpdated` to the `Supplier` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userCreated` to the `Supplier` table without a default value. This is not possible if the table is not empty.
  - Added the required column `dateUpdated` to the `UserRoles` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userCreated` to the `UserRoles` table without a default value. This is not possible if the table is not empty.
  - Added the required column `dateUpdated` to the `WorkerType` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userCreated` to the `WorkerType` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Additional" ADD COLUMN     "dateCreated" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "dateUpdated" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "statusID" INTEGER NOT NULL DEFAULT 1,
ADD COLUMN     "userCreated" TEXT NOT NULL,
ADD COLUMN     "userOrigin" TEXT,
ADD COLUMN     "userUpdated" TEXT,
ADD COLUMN     "version" INTEGER NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE "Article" ADD COLUMN     "dateCreated" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "dateUpdated" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "statusID" INTEGER NOT NULL DEFAULT 1,
ADD COLUMN     "userCreated" TEXT NOT NULL,
ADD COLUMN     "userOrigin" TEXT,
ADD COLUMN     "userUpdated" TEXT,
ADD COLUMN     "version" INTEGER NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE "ArticleType" ADD COLUMN     "dateCreated" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "dateUpdated" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "statusID" INTEGER NOT NULL DEFAULT 1,
ADD COLUMN     "userCreated" TEXT NOT NULL,
ADD COLUMN     "userOrigin" TEXT,
ADD COLUMN     "userUpdated" TEXT,
ADD COLUMN     "version" INTEGER NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE "AttendanceControl" ADD COLUMN     "dateCreated" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "dateUpdated" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "statusID" INTEGER NOT NULL DEFAULT 1,
ADD COLUMN     "userCreated" TEXT NOT NULL,
ADD COLUMN     "userOrigin" TEXT,
ADD COLUMN     "userUpdated" TEXT,
ADD COLUMN     "version" INTEGER NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE "Client" ADD COLUMN     "dateCreated" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "dateUpdated" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "statusID" INTEGER NOT NULL DEFAULT 1,
ADD COLUMN     "userCreated" TEXT NOT NULL,
ADD COLUMN     "userOrigin" TEXT,
ADD COLUMN     "userUpdated" TEXT,
ADD COLUMN     "version" INTEGER NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE "ClientType" ADD COLUMN     "dateCreated" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "dateUpdated" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "statusID" INTEGER NOT NULL DEFAULT 1,
ADD COLUMN     "userCreated" TEXT NOT NULL,
ADD COLUMN     "userOrigin" TEXT,
ADD COLUMN     "userUpdated" TEXT,
ADD COLUMN     "version" INTEGER NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE "CustomizeOrder" ADD COLUMN     "dateCreated" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "dateUpdated" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "statusID" INTEGER NOT NULL DEFAULT 1,
ADD COLUMN     "userCreated" TEXT NOT NULL,
ADD COLUMN     "userOrigin" TEXT,
ADD COLUMN     "userUpdated" TEXT,
ADD COLUMN     "version" INTEGER NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE "EmbroideryDetail" ADD COLUMN     "dateCreated" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "dateUpdated" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "statusID" INTEGER NOT NULL DEFAULT 1,
ADD COLUMN     "userCreated" TEXT NOT NULL,
ADD COLUMN     "userOrigin" TEXT,
ADD COLUMN     "userUpdated" TEXT,
ADD COLUMN     "version" INTEGER NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE "ExitType" ADD COLUMN     "dateCreated" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "dateUpdated" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "statusID" INTEGER NOT NULL DEFAULT 1,
ADD COLUMN     "userCreated" TEXT NOT NULL,
ADD COLUMN     "userOrigin" TEXT,
ADD COLUMN     "userUpdated" TEXT,
ADD COLUMN     "version" INTEGER NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE "Gift" ADD COLUMN     "dateCreated" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "dateUpdated" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "statusID" INTEGER NOT NULL DEFAULT 1,
ADD COLUMN     "userCreated" TEXT NOT NULL,
ADD COLUMN     "userOrigin" TEXT,
ADD COLUMN     "userUpdated" TEXT,
ADD COLUMN     "version" INTEGER NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE "Machine" ADD COLUMN     "dateCreated" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "dateUpdated" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "statusID" INTEGER NOT NULL DEFAULT 1,
ADD COLUMN     "userCreated" TEXT NOT NULL,
ADD COLUMN     "userOrigin" TEXT,
ADD COLUMN     "userUpdated" TEXT,
ADD COLUMN     "version" INTEGER NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE "MachineAdditionalCost" ADD COLUMN     "dateCreated" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "dateUpdated" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "statusID" INTEGER NOT NULL DEFAULT 1,
ADD COLUMN     "userCreated" TEXT NOT NULL,
ADD COLUMN     "userOrigin" TEXT,
ADD COLUMN     "userUpdated" TEXT,
ADD COLUMN     "version" INTEGER NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE "MachineArticleCost" ADD COLUMN     "dateCreated" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "dateUpdated" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "statusID" INTEGER NOT NULL DEFAULT 1,
ADD COLUMN     "userCreated" TEXT NOT NULL,
ADD COLUMN     "userOrigin" TEXT,
ADD COLUMN     "userUpdated" TEXT,
ADD COLUMN     "version" INTEGER NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE "Manpower" ADD COLUMN     "dateCreated" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "dateUpdated" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "statusID" INTEGER NOT NULL DEFAULT 1,
ADD COLUMN     "userCreated" TEXT NOT NULL,
ADD COLUMN     "userOrigin" TEXT,
ADD COLUMN     "userUpdated" TEXT,
ADD COLUMN     "version" INTEGER NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE "ManpowerAdditional" ADD COLUMN     "dateCreated" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "dateUpdated" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "statusID" INTEGER NOT NULL DEFAULT 1,
ADD COLUMN     "userCreated" TEXT NOT NULL,
ADD COLUMN     "userOrigin" TEXT,
ADD COLUMN     "userUpdated" TEXT,
ADD COLUMN     "version" INTEGER NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE "ManpowerMachine" ADD COLUMN     "dateCreated" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "dateUpdated" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "statusID" INTEGER NOT NULL DEFAULT 1,
ADD COLUMN     "userCreated" TEXT NOT NULL,
ADD COLUMN     "userOrigin" TEXT,
ADD COLUMN     "userUpdated" TEXT,
ADD COLUMN     "version" INTEGER NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE "MoneyOrder" ADD COLUMN     "dateCreated" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "dateUpdated" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "statusID" INTEGER NOT NULL DEFAULT 1,
ADD COLUMN     "userCreated" TEXT NOT NULL,
ADD COLUMN     "userOrigin" TEXT,
ADD COLUMN     "userUpdated" TEXT,
ADD COLUMN     "version" INTEGER NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE "Order" ADD COLUMN     "dateCreated" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "dateUpdated" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "statusID" INTEGER NOT NULL DEFAULT 1,
ADD COLUMN     "userCreated" TEXT NOT NULL,
ADD COLUMN     "userOrigin" TEXT,
ADD COLUMN     "userUpdated" TEXT,
ADD COLUMN     "version" INTEGER NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE "OrderDetail" ADD COLUMN     "dateCreated" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "dateUpdated" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "statusID" INTEGER NOT NULL DEFAULT 1,
ADD COLUMN     "userCreated" TEXT NOT NULL,
ADD COLUMN     "userOrigin" TEXT,
ADD COLUMN     "userUpdated" TEXT,
ADD COLUMN     "version" INTEGER NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE "OrderGift" ADD COLUMN     "dateCreated" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "dateUpdated" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "statusID" INTEGER NOT NULL DEFAULT 1,
ADD COLUMN     "userCreated" TEXT NOT NULL,
ADD COLUMN     "userOrigin" TEXT,
ADD COLUMN     "userUpdated" TEXT,
ADD COLUMN     "version" INTEGER NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE "Role" ADD COLUMN     "dateCreated" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "dateUpdated" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "statusID" INTEGER NOT NULL DEFAULT 1,
ADD COLUMN     "userCreated" TEXT NOT NULL,
ADD COLUMN     "userOrigin" TEXT,
ADD COLUMN     "userUpdated" TEXT,
ADD COLUMN     "version" INTEGER NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE "Sex" ADD COLUMN     "dateCreated" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "dateUpdated" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "statusID" INTEGER NOT NULL DEFAULT 1,
ADD COLUMN     "userCreated" TEXT NOT NULL,
ADD COLUMN     "userOrigin" TEXT,
ADD COLUMN     "userUpdated" TEXT,
ADD COLUMN     "version" INTEGER NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE "Size" ADD COLUMN     "dateCreated" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "dateUpdated" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "statusID" INTEGER NOT NULL DEFAULT 1,
ADD COLUMN     "userCreated" TEXT NOT NULL,
ADD COLUMN     "userOrigin" TEXT,
ADD COLUMN     "userUpdated" TEXT,
ADD COLUMN     "version" INTEGER NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE "SublimatedDetail" ADD COLUMN     "dateCreated" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "dateUpdated" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "statusID" INTEGER NOT NULL DEFAULT 1,
ADD COLUMN     "userCreated" TEXT NOT NULL,
ADD COLUMN     "userOrigin" TEXT,
ADD COLUMN     "userUpdated" TEXT,
ADD COLUMN     "version" INTEGER NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE "Supplier" ADD COLUMN     "dateCreated" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "dateUpdated" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "statusID" INTEGER NOT NULL DEFAULT 1,
ADD COLUMN     "userCreated" TEXT NOT NULL,
ADD COLUMN     "userOrigin" TEXT,
ADD COLUMN     "userUpdated" TEXT,
ADD COLUMN     "version" INTEGER NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE "UserRoles" ADD COLUMN     "dateCreated" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "dateUpdated" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "statusID" INTEGER NOT NULL DEFAULT 1,
ADD COLUMN     "userCreated" TEXT NOT NULL,
ADD COLUMN     "userOrigin" TEXT,
ADD COLUMN     "userUpdated" TEXT,
ADD COLUMN     "version" INTEGER NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE "WorkerType" ADD COLUMN     "dateCreated" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "dateUpdated" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "statusID" INTEGER NOT NULL DEFAULT 1,
ADD COLUMN     "userCreated" TEXT NOT NULL,
ADD COLUMN     "userOrigin" TEXT,
ADD COLUMN     "userUpdated" TEXT,
ADD COLUMN     "version" INTEGER NOT NULL DEFAULT 0;
