-- CreateTable
CREATE TABLE "User" (
    "userID" SERIAL NOT NULL,
    "personID" INTEGER NOT NULL,
    "userEmail" TEXT NOT NULL,
    "userPassword" TEXT NOT NULL,
    "userUrlImg" TEXT NOT NULL,
    "statusID" INTEGER NOT NULL DEFAULT 1,
    "dateCreated" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "dateUpdated" TIMESTAMP(3) NOT NULL,
    "userCreated" TEXT NOT NULL,
    "userOrigin" TEXT,
    "userUpdated" TEXT,
    "version" INTEGER NOT NULL DEFAULT 0,

    CONSTRAINT "User_pkey" PRIMARY KEY ("userID")
);

-- CreateTable
CREATE TABLE "Person" (
    "personID" SERIAL NOT NULL,
    "names" TEXT NOT NULL,
    "surnames" TEXT NOT NULL,
    "phone" TEXT NOT NULL,
    "address" TEXT NOT NULL,
    "dni" TEXT NOT NULL,
    "statusID" INTEGER NOT NULL DEFAULT 1,
    "dateCreated" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "dateUpdated" TIMESTAMP(3) NOT NULL,
    "userCreated" TEXT NOT NULL,
    "userOrigin" TEXT,
    "userUpdated" TEXT,
    "version" INTEGER NOT NULL DEFAULT 0,

    CONSTRAINT "Person_pkey" PRIMARY KEY ("personID")
);

-- CreateTable
CREATE TABLE "Role" (
    "roleID" SERIAL NOT NULL,
    "rolName" TEXT NOT NULL,

    CONSTRAINT "Role_pkey" PRIMARY KEY ("roleID")
);

-- CreateTable
CREATE TABLE "ExitType" (
    "exitTypeID" SERIAL NOT NULL,
    "exitTypeName" TEXT NOT NULL,

    CONSTRAINT "ExitType_pkey" PRIMARY KEY ("exitTypeID")
);

-- CreateTable
CREATE TABLE "Machine" (
    "machineID" SERIAL NOT NULL,
    "machineName" TEXT NOT NULL,
    "machineUrlImg" TEXT NOT NULL,

    CONSTRAINT "Machine_pkey" PRIMARY KEY ("machineID")
);

-- CreateTable
CREATE TABLE "ArticleType" (
    "articleTypeID" SERIAL NOT NULL,
    "articleName" TEXT NOT NULL,
    "articleUrlImg" TEXT NOT NULL,

    CONSTRAINT "ArticleType_pkey" PRIMARY KEY ("articleTypeID")
);

-- CreateTable
CREATE TABLE "ClientType" (
    "clientTypeID" SERIAL NOT NULL,
    "clientName" TEXT NOT NULL,

    CONSTRAINT "ClientType_pkey" PRIMARY KEY ("clientTypeID")
);

-- CreateTable
CREATE TABLE "Size" (
    "sizeID" SERIAL NOT NULL,
    "sizeNumber" INTEGER NOT NULL,
    "sizeLetter" TEXT NOT NULL,

    CONSTRAINT "Size_pkey" PRIMARY KEY ("sizeID")
);

-- CreateTable
CREATE TABLE "Sex" (
    "sexID" SERIAL NOT NULL,
    "sexName" TEXT NOT NULL,
    "sexAbbr" TEXT NOT NULL,

    CONSTRAINT "Sex_pkey" PRIMARY KEY ("sexID")
);

-- CreateTable
CREATE TABLE "Client" (
    "clientID" SERIAL NOT NULL,
    "companyName" TEXT,
    "email" TEXT NOT NULL,
    "clientTypeID" INTEGER NOT NULL,
    "personID" INTEGER NOT NULL,

    CONSTRAINT "Client_pkey" PRIMARY KEY ("clientID")
);

-- CreateTable
CREATE TABLE "Gift" (
    "giftID" SERIAL NOT NULL,
    "giftUrlImg" TEXT NOT NULL,
    "articleTypeID" INTEGER NOT NULL,

    CONSTRAINT "Gift_pkey" PRIMARY KEY ("giftID")
);

-- CreateTable
CREATE TABLE "Order" (
    "orderID" SERIAL NOT NULL,
    "deliveryDate" TIMESTAMP(3) NOT NULL,
    "total" DECIMAL(65,30) NOT NULL,
    "userID" INTEGER NOT NULL,
    "clientID" INTEGER NOT NULL,

    CONSTRAINT "Order_pkey" PRIMARY KEY ("orderID")
);

-- CreateTable
CREATE TABLE "OrderGift" (
    "orderGiftID" SERIAL NOT NULL,
    "giftID" INTEGER NOT NULL,
    "orderID" INTEGER NOT NULL,
    "sizeID" INTEGER NOT NULL,

    CONSTRAINT "OrderGift_pkey" PRIMARY KEY ("orderGiftID")
);

-- CreateTable
CREATE TABLE "OrderDetail" (
    "orderDetailID" SERIAL NOT NULL,
    "quantity" INTEGER NOT NULL,
    "comments" TEXT NOT NULL,
    "orderID" INTEGER NOT NULL,
    "articleTypeID" INTEGER NOT NULL,
    "sizeID" INTEGER NOT NULL,
    "sexID" INTEGER NOT NULL,

    CONSTRAINT "OrderDetail_pkey" PRIMARY KEY ("orderDetailID")
);

-- CreateTable
CREATE TABLE "EmbroideryDetail" (
    "embroideryDetailID" SERIAL NOT NULL,
    "embroideryDetailUrlImg" TEXT NOT NULL,
    "orderDetailID" INTEGER NOT NULL,

    CONSTRAINT "EmbroideryDetail_pkey" PRIMARY KEY ("embroideryDetailID")
);

-- CreateTable
CREATE TABLE "SublimatedDetail" (
    "sublimatedDetailID" SERIAL NOT NULL,
    "sublimatedDetailUrlImg" TEXT NOT NULL,
    "orderDetailID" INTEGER NOT NULL,

    CONSTRAINT "SublimatedDetail_pkey" PRIMARY KEY ("sublimatedDetailID")
);

-- CreateTable
CREATE TABLE "UserRoles" (
    "userRoleID" SERIAL NOT NULL,
    "roleID" INTEGER NOT NULL,
    "userID" INTEGER NOT NULL,

    CONSTRAINT "UserRoles_pkey" PRIMARY KEY ("userRoleID")
);

-- CreateTable
CREATE TABLE "WorkerType" (
    "workerTypeID" SERIAL NOT NULL,
    "workerTypeName" TEXT NOT NULL,
    "workerTypeCostHour" DECIMAL(65,30) NOT NULL,
    "roleID" INTEGER NOT NULL,

    CONSTRAINT "WorkerType_pkey" PRIMARY KEY ("workerTypeID")
);

-- CreateTable
CREATE TABLE "AttendanceControl" (
    "attendanceControlID" SERIAL NOT NULL,
    "attendanceEntryDate" TIMESTAMP(3) NOT NULL,
    "attendanceExitDate" TIMESTAMP(3) NOT NULL,
    "costHour" DECIMAL(65,30) NOT NULL,
    "userID" INTEGER NOT NULL,
    "workerTypeID" INTEGER NOT NULL,
    "exitTypeID" INTEGER NOT NULL,

    CONSTRAINT "AttendanceControl_pkey" PRIMARY KEY ("attendanceControlID")
);

-- CreateTable
CREATE TABLE "MoneyOrder" (
    "moneyOrderID" SERIAL NOT NULL,
    "startDate" TIMESTAMP(3) NOT NULL,
    "endDate" TIMESTAMP(3) NOT NULL,
    "issueDate" TIMESTAMP(3) NOT NULL,
    "isAgreement" BOOLEAN NOT NULL,
    "manpowers" INTEGER[],
    "total" DECIMAL(65,30) NOT NULL,
    "userID" INTEGER NOT NULL,

    CONSTRAINT "MoneyOrder_pkey" PRIMARY KEY ("moneyOrderID")
);

-- CreateTable
CREATE TABLE "Article" (
    "articleID" SERIAL NOT NULL,
    "articleName" TEXT NOT NULL,
    "articleUrlImg" TEXT NOT NULL,
    "totalCost" DECIMAL(65,30) NOT NULL,
    "articleTypeID" INTEGER NOT NULL,

    CONSTRAINT "Article_pkey" PRIMARY KEY ("articleID")
);

-- CreateTable
CREATE TABLE "Additional" (
    "additionalID" SERIAL NOT NULL,
    "additionalName" TEXT NOT NULL,
    "additionalUrlImg" TEXT NOT NULL,
    "totalCost" DECIMAL(65,30) NOT NULL,
    "articleTypeID" INTEGER NOT NULL,

    CONSTRAINT "Additional_pkey" PRIMARY KEY ("additionalID")
);

-- CreateTable
CREATE TABLE "MachineArticleCost" (
    "machineArticleCost" SERIAL NOT NULL,
    "costProduction" DECIMAL(65,30) NOT NULL,
    "articleID" INTEGER NOT NULL,
    "machineID" INTEGER NOT NULL,

    CONSTRAINT "MachineArticleCost_pkey" PRIMARY KEY ("machineArticleCost")
);

-- CreateTable
CREATE TABLE "MachineAdditionalCost" (
    "machineAdditionalCost" SERIAL NOT NULL,
    "costProduction" DECIMAL(65,30) NOT NULL,
    "additionalID" INTEGER NOT NULL,
    "machineID" INTEGER NOT NULL,

    CONSTRAINT "MachineAdditionalCost_pkey" PRIMARY KEY ("machineAdditionalCost")
);

-- CreateTable
CREATE TABLE "Manpower" (
    "manpowerID" SERIAL NOT NULL,
    "quantity" INTEGER NOT NULL,
    "articleID" INTEGER NOT NULL,
    "orderID" INTEGER NOT NULL,
    "userID" INTEGER NOT NULL,

    CONSTRAINT "Manpower_pkey" PRIMARY KEY ("manpowerID")
);

-- CreateTable
CREATE TABLE "ManpowerMachine" (
    "manpowerMachineID" SERIAL NOT NULL,
    "costProduction" DECIMAL(65,30) NOT NULL,
    "manpowerID" INTEGER NOT NULL,
    "machineID" INTEGER NOT NULL,

    CONSTRAINT "ManpowerMachine_pkey" PRIMARY KEY ("manpowerMachineID")
);

-- CreateTable
CREATE TABLE "ManpowerAdditional" (
    "manpowerAdditionalID" SERIAL NOT NULL,
    "costProduction" DECIMAL(65,30) NOT NULL,
    "manpowerID" INTEGER NOT NULL,
    "additionalID" INTEGER NOT NULL,

    CONSTRAINT "ManpowerAdditional_pkey" PRIMARY KEY ("manpowerAdditionalID")
);

-- CreateTable
CREATE TABLE "CustomizeOrder" (
    "customizeOrderID" SERIAL NOT NULL,
    "name" TEXT,
    "number" TEXT,

    CONSTRAINT "CustomizeOrder_pkey" PRIMARY KEY ("customizeOrderID")
);

-- CreateTable
CREATE TABLE "Supplier" (
    "supplierID" SERIAL NOT NULL,
    "supplierName" TEXT NOT NULL,
    "supplierRuc" TEXT NOT NULL,
    "supplierAddress" TEXT NOT NULL,
    "supplierPhone" TEXT NOT NULL,
    "supplierEmail" TEXT NOT NULL,

    CONSTRAINT "Supplier_pkey" PRIMARY KEY ("supplierID")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_userEmail_key" ON "User"("userEmail");

-- CreateIndex
CREATE UNIQUE INDEX "Person_dni_key" ON "Person"("dni");

-- AddForeignKey
ALTER TABLE "User" ADD CONSTRAINT "User_personID_fkey" FOREIGN KEY ("personID") REFERENCES "Person"("personID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Client" ADD CONSTRAINT "Client_clientTypeID_fkey" FOREIGN KEY ("clientTypeID") REFERENCES "ClientType"("clientTypeID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Client" ADD CONSTRAINT "Client_personID_fkey" FOREIGN KEY ("personID") REFERENCES "Person"("personID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Gift" ADD CONSTRAINT "Gift_articleTypeID_fkey" FOREIGN KEY ("articleTypeID") REFERENCES "ArticleType"("articleTypeID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Order" ADD CONSTRAINT "Order_userID_fkey" FOREIGN KEY ("userID") REFERENCES "User"("userID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Order" ADD CONSTRAINT "Order_clientID_fkey" FOREIGN KEY ("clientID") REFERENCES "Client"("clientID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "OrderGift" ADD CONSTRAINT "OrderGift_giftID_fkey" FOREIGN KEY ("giftID") REFERENCES "Gift"("giftID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "OrderGift" ADD CONSTRAINT "OrderGift_orderID_fkey" FOREIGN KEY ("orderID") REFERENCES "Order"("orderID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "OrderGift" ADD CONSTRAINT "OrderGift_sizeID_fkey" FOREIGN KEY ("sizeID") REFERENCES "Size"("sizeID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "OrderDetail" ADD CONSTRAINT "OrderDetail_orderID_fkey" FOREIGN KEY ("orderID") REFERENCES "Order"("orderID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "OrderDetail" ADD CONSTRAINT "OrderDetail_articleTypeID_fkey" FOREIGN KEY ("articleTypeID") REFERENCES "ArticleType"("articleTypeID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "OrderDetail" ADD CONSTRAINT "OrderDetail_sizeID_fkey" FOREIGN KEY ("sizeID") REFERENCES "Size"("sizeID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "OrderDetail" ADD CONSTRAINT "OrderDetail_sexID_fkey" FOREIGN KEY ("sexID") REFERENCES "Sex"("sexID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "EmbroideryDetail" ADD CONSTRAINT "EmbroideryDetail_orderDetailID_fkey" FOREIGN KEY ("orderDetailID") REFERENCES "OrderDetail"("orderDetailID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "SublimatedDetail" ADD CONSTRAINT "SublimatedDetail_orderDetailID_fkey" FOREIGN KEY ("orderDetailID") REFERENCES "OrderDetail"("orderDetailID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UserRoles" ADD CONSTRAINT "UserRoles_roleID_fkey" FOREIGN KEY ("roleID") REFERENCES "Role"("roleID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UserRoles" ADD CONSTRAINT "UserRoles_userID_fkey" FOREIGN KEY ("userID") REFERENCES "User"("userID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "WorkerType" ADD CONSTRAINT "WorkerType_roleID_fkey" FOREIGN KEY ("roleID") REFERENCES "Role"("roleID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "AttendanceControl" ADD CONSTRAINT "AttendanceControl_userID_fkey" FOREIGN KEY ("userID") REFERENCES "User"("userID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "AttendanceControl" ADD CONSTRAINT "AttendanceControl_workerTypeID_fkey" FOREIGN KEY ("workerTypeID") REFERENCES "WorkerType"("workerTypeID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "AttendanceControl" ADD CONSTRAINT "AttendanceControl_exitTypeID_fkey" FOREIGN KEY ("exitTypeID") REFERENCES "ExitType"("exitTypeID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MoneyOrder" ADD CONSTRAINT "MoneyOrder_userID_fkey" FOREIGN KEY ("userID") REFERENCES "User"("userID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Article" ADD CONSTRAINT "Article_articleTypeID_fkey" FOREIGN KEY ("articleTypeID") REFERENCES "ArticleType"("articleTypeID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Additional" ADD CONSTRAINT "Additional_articleTypeID_fkey" FOREIGN KEY ("articleTypeID") REFERENCES "ArticleType"("articleTypeID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MachineArticleCost" ADD CONSTRAINT "MachineArticleCost_articleID_fkey" FOREIGN KEY ("articleID") REFERENCES "Article"("articleID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MachineArticleCost" ADD CONSTRAINT "MachineArticleCost_machineID_fkey" FOREIGN KEY ("machineID") REFERENCES "Machine"("machineID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MachineAdditionalCost" ADD CONSTRAINT "MachineAdditionalCost_additionalID_fkey" FOREIGN KEY ("additionalID") REFERENCES "Additional"("additionalID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MachineAdditionalCost" ADD CONSTRAINT "MachineAdditionalCost_machineID_fkey" FOREIGN KEY ("machineID") REFERENCES "Machine"("machineID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Manpower" ADD CONSTRAINT "Manpower_articleID_fkey" FOREIGN KEY ("articleID") REFERENCES "Article"("articleID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Manpower" ADD CONSTRAINT "Manpower_orderID_fkey" FOREIGN KEY ("orderID") REFERENCES "Order"("orderID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Manpower" ADD CONSTRAINT "Manpower_userID_fkey" FOREIGN KEY ("userID") REFERENCES "User"("userID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ManpowerMachine" ADD CONSTRAINT "ManpowerMachine_manpowerID_fkey" FOREIGN KEY ("manpowerID") REFERENCES "Manpower"("manpowerID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ManpowerMachine" ADD CONSTRAINT "ManpowerMachine_machineID_fkey" FOREIGN KEY ("machineID") REFERENCES "Machine"("machineID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ManpowerAdditional" ADD CONSTRAINT "ManpowerAdditional_manpowerID_fkey" FOREIGN KEY ("manpowerID") REFERENCES "Manpower"("manpowerID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ManpowerAdditional" ADD CONSTRAINT "ManpowerAdditional_additionalID_fkey" FOREIGN KEY ("additionalID") REFERENCES "Additional"("additionalID") ON DELETE RESTRICT ON UPDATE CASCADE;
