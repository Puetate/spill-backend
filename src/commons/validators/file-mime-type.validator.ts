import { FileValidator } from "@nestjs/common";
import { validateFileMimeType } from "..";
import { AcceptedMimeTypes } from "../utils/types";

interface FileMimeTypeValidatorOptions {
  fileType: AcceptedMimeTypes[];
}

export class FileMimeTypeValidator extends FileValidator<FileMimeTypeValidatorOptions, Express.Multer.File> {
  buildErrorMessage(): string {
    return `Validation failed (expected types are ${this.validationOptions.fileType.join(", ")})`;
  }

  isValid(file?: Express.Multer.File): boolean {
    if (!this.validationOptions) {
      return true;
    }
    return !!file && "mimetype" in file && validateFileMimeType(file, this.validationOptions.fileType);
  }
}
