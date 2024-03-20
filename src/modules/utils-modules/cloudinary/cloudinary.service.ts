import { Injectable } from "@nestjs/common";
import { UploadApiOptions, v2 as cloudinary } from "cloudinary";
import { CloudinaryResponse } from "./types";

@Injectable()
export class CloudinaryService {
  uploadFile(file: Express.Multer.File, options: UploadApiOptions) {
    return new Promise<CloudinaryResponse>((resolve, reject) => {
      cloudinary.uploader
        .upload_stream(options, (error, result) => {
          if (result) resolve(result);
          else reject(error);
        })
        .end(file.buffer);
    });
  }

  deleteFile(fileName: string) {
    const public_id = fileName.split(".")[0];
    return new Promise<CloudinaryResponse>((resolve, reject) => {
      cloudinary.uploader.destroy(public_id, (error, result) => {
        if (result) resolve(result);
        else reject(error);
      });
    });
  }

  findFile(fileName: string) {
    const public_id = fileName.split(".")[0];
    return new Promise<CloudinaryResponse>((resolve, reject) => {
      cloudinary.api.resource(public_id, (error, result) => {
        if (result) resolve(result);
        else reject(error);
      });
    });
  }
}
