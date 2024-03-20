import { CorsOptions } from "@nestjs/common/interfaces/external/cors-options.interface";

export const CORS: CorsOptions = {
  origin: true,
  credentials: true,
  methods: "GET, POST, PUT, DELETE, PATCH"
};
