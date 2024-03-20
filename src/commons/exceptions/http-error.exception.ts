import { HttpException } from "@nestjs/common";
import { HttpStatus } from "@nestjs/common/enums";

export interface HttpErrorExceptionResponse {
  error: string;
  message: string;
}
export class HttpErrorException extends HttpException {
  constructor(response: HttpErrorExceptionResponse | string, status: HttpStatus) {
    const res =
      typeof response === "string"
        ? { error: response }
        : { error: response.error, message: response.message };
    super({ ...res }, status);
  }

  /**
   * Crea una instancia de HttpErrorException a partir de un error dado.
   * @param error - error a ser arrojado
   * @returns HttpErrorException - una instancia de HttpErrorException
   */
  static createFromError(error: any) {
    if (error instanceof HttpErrorException) return error;
    else if (error instanceof Error) return new HttpErrorException(error.message, HttpStatus.BAD_REQUEST);
    else return new HttpErrorException(error, HttpStatus.INTERNAL_SERVER_ERROR);
  }
}
