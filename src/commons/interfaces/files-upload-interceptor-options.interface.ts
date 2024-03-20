import { AcceptedMimeTypes } from "../utils/types";

export interface FilesUploadInterceptorOptions {
  acceptedMimeTypes?: AcceptedMimeTypes[]; // will check if mimetype is accepted
  destination?: string; // will override checkParamForDestination
}
