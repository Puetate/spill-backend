import { join } from "path";
import { joinWebPath } from "../utils/join-web-path.util";

export class FolderConstants {
  // Folders
  static PUBLIC_FOLDER: string = "public";
  static AVATARS_FOLDER: string = "avatars";

  // Server Paths
  static getPublicPath() {
    return join(__dirname, "..", "..", "..", this.PUBLIC_FOLDER);
  }

  static getAvatarsPath() {
    return join(this.getPublicPath(), this.AVATARS_FOLDER);
  }

  // Web Paths
  static getPublicWebPath(fileName: string = "") {
    return joinWebPath(this.PUBLIC_FOLDER, fileName);
  }

  static getAvatarsWebPath(fileName: string) {
    return joinWebPath(this.AVATARS_FOLDER, fileName);
  }
}
