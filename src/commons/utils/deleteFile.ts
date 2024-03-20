import { existsSync, unlinkSync } from "fs";

export function deleteFile(path: string) {
  try {
    if (existsSync(path)) unlinkSync(path);
  } catch (error) {
    console.log(error);
  }
}
