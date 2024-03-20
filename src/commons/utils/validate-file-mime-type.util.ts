import { AcceptedMimeTypes, MulterFile } from "./types";

export function validateFileMimeType(
  file: Express.Multer.File | MulterFile,
  allowedMimeTypes: AcceptedMimeTypes[]
): boolean {
  try {
    // Files types magic numbers
    const magicNumbers: Record<AcceptedMimeTypes, RegExp> = {
      "image/jpeg": /^ffd8ff/,
      "image/jpg": /^ffd8ff/,
      "image/png": /^89504e47/,
      "application/pdf": /^25504446/
    } as const;

    if (!file.buffer || file.buffer.length < 4) {
      return false;
    }

    //  Read the magic number from the file
    let header = "";
    const arr = new Uint8Array(file.buffer).subarray(0, 4);

    for (let i = 0; i < arr.length; i++) {
      header += arr[i].toString(16);
    }
    for (const mimeType of allowedMimeTypes) {
      if (magicNumbers[mimeType]) {
        const expectedMagicNumber = magicNumbers[mimeType];
        if (expectedMagicNumber.test(header)) {
          return true;
        }
      }
    }
    return false;
  } catch (error) {
    console.error("Error:", error);
    return false;
  }
}
