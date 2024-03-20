import { ValidationPipe } from '@nestjs/common';
import { NestFactory } from '@nestjs/core';
import { DocumentBuilder, SwaggerModule } from "@nestjs/swagger";
import { AppModule } from './app.module';
import { CORS } from './commons/config';
import morgan from 'morgan';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);

  app.useGlobalPipes(
    new ValidationPipe({
      transform: true,
      whitelist: true
    })
  );

  app.setGlobalPrefix("api");
  // app.use(morgan("combined"));
  app.enableCors(CORS);

  const config = new DocumentBuilder()
    .setTitle("Spill api")
    .setDescription("API documentation for Spill")
    .setVersion("1.0")
    .addBearerAuth()
    .build();

  const document = SwaggerModule.createDocument(app, config);
  SwaggerModule.setup("Documentation", app, document, {
    swaggerOptions: {
      persistAuthorization: true
    }
  })

  await app.listen(process.env.PORT || 3000);
}
bootstrap();
