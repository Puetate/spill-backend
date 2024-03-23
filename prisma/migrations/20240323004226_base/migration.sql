-- CreateTable
CREATE TABLE "AdvancedPayment" (
    "advancedPaymentID" SERIAL NOT NULL,
    "userID" INTEGER NOT NULL,
    "statusID" INTEGER NOT NULL DEFAULT 1,
    "dateCreated" TIMESTAMPTZ(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "dateUpdated" TIMESTAMPTZ(6),
    "userCreated" TEXT,
    "userUpdated" TEXT,
    "version" INTEGER NOT NULL DEFAULT 0,

    CONSTRAINT "AdvancedPayment_pkey" PRIMARY KEY ("advancedPaymentID")
);

-- AddForeignKey
ALTER TABLE "AdvancedPayment" ADD CONSTRAINT "AdvancedPayment_userID_fkey" FOREIGN KEY ("userID") REFERENCES "User"("userID") ON DELETE RESTRICT ON UPDATE CASCADE;
