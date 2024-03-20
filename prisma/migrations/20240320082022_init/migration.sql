-- AlterTable
ALTER TABLE "OrderGift" ALTER COLUMN "dateUpdated" DROP NOT NULL;

-- AlterTable
ALTER TABLE "Person" ALTER COLUMN "dateUpdated" DROP NOT NULL;

-- AlterTable
ALTER TABLE "Role" ALTER COLUMN "dateUpdated" DROP NOT NULL;

-- AlterTable
ALTER TABLE "Sex" ALTER COLUMN "dateUpdated" DROP NOT NULL;

-- AlterTable
ALTER TABLE "Size" ALTER COLUMN "dateUpdated" DROP NOT NULL;

-- AlterTable
ALTER TABLE "UserRoles" ALTER COLUMN "dateUpdated" DROP NOT NULL;
