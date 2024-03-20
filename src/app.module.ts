import { Module } from '@nestjs/common';
import { APP_FILTER } from '@nestjs/core';
import { JwtService } from '@nestjs/jwt';
import { AllExceptionsFilter } from './commons';
import { ConfigModule } from '@nestjs/config';
import { PrismaModule } from './modules/prisma/prisma.module';
import { ClsModule } from 'nestjs-cls';
import { ClsPluginTransactional } from '@nestjs-cls/transactional';
import { TransactionalAdapterPrisma } from '@nestjs-cls/transactional-adapter-prisma';
import { PrismaService } from './modules/prisma/prisma.service';
import { UserModule } from './modules/user-modules/user/user.module';
import { PersonModule } from './modules/user-modules/person/person.module';

@Module({
  imports: [
    ConfigModule.forRoot({ isGlobal: true }),
    PrismaModule,
    ClsModule.forRoot({
      plugins: [
        new ClsPluginTransactional({
          imports: [PrismaModule],
          adapter: new TransactionalAdapterPrisma({
            prismaInjectionToken: PrismaService
          })
        })
      ]
    }),
    
    UserModule,
    
    PersonModule,
  ],
  controllers: [],
  providers: [
    JwtService, {
      provide: APP_FILTER,
      useClass: AllExceptionsFilter
    }],
})
export class AppModule { }
