import { Controller, Get, Post, Body, Patch, Param, Delete, UseInterceptors, UploadedFile, ParseFilePipe } from '@nestjs/common';
import { PersonService } from './person.service';
import { CreatePersonDto } from './dto/create-person.dto';
import { UpdatePersonDto } from './dto/update-person.dto';
import { ApiBearerAuth, ApiConsumes, ApiTags } from '@nestjs/swagger';
import { Roles } from 'src/commons';
import { FileInterceptor } from '@nestjs/platform-express';
import { FileMimeTypeValidator } from 'src/commons/validators';

@ApiTags("person")
@ApiBearerAuth()
@Roles("ADMIN") // Routes take these roles by default
@Controller('person')
export class PersonController {
  constructor(private readonly personService: PersonService) { }

  @Post()
  @ApiConsumes("multipart/form-data")
  @UseInterceptors(FileInterceptor("avatar"))
  create(@Body() createPersonDto: CreatePersonDto, @UploadedFile(
    new ParseFilePipe({
      validators: [new FileMimeTypeValidator({ fileType: ["image/jpeg", "image/jpg", "image/png"] })]
    })
  )
  avatarImg: Express.Multer.File) {

    return this.personService.create(createPersonDto, avatarImg);
  }

  @Get()
  findAll() {
    return this.personService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.personService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updatePersonDto: UpdatePersonDto) {
    return this.personService.update(+id, updatePersonDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.personService.remove(+id);
  }
}
