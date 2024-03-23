import { Module } from '@nestjs/common';
import { PersonService } from './PersonService';
import { PersonController } from './person.controller';

@Module({
  controllers: [PersonController],
  providers: [PersonService],
})
export class PersonModule { }
