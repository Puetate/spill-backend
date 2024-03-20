import { HttpStatus, Injectable } from '@nestjs/common';
import { CreatePersonDto } from './dto/create-person.dto';
import { UpdatePersonDto } from './dto/update-person.dto';
import { TransactionHost } from '@nestjs-cls/transactional';
import { TransactionalAdapterPrisma } from '@nestjs-cls/transactional-adapter-prisma';
import { UserService } from '../user/user.service';
import { CloudinaryService } from 'src/modules/utils-modules/cloudinary/cloudinary.service';
import { HttpErrorException } from 'src/commons';
import { PERSON_ERROR_RESPONSE } from './responses';

@Injectable()
export class PersonService {
  constructor(
    private readonly prismaHost: TransactionHost<TransactionalAdapterPrisma>,
    private readonly userService: UserService,
    private readonly cloudinaryService: CloudinaryService
  ) {}

  async create(createPersonDto: CreatePersonDto, avatarImg:Express.Multer.File) {
    const { dni } = createPersonDto;
    const foundPerson = await this.findByDNI(dni);
    if (foundPerson)
      throw new HttpErrorException(PERSON_ERROR_RESPONSE.PERSON_ALREADY_EXISTS, HttpStatus.BAD_REQUEST);
    const uploadAvatar = await this.cloudinaryService.uploadFile(avatarImg, {
      folder: "avatars",
      format: "jpg"
    });
    const personUrlImg = `${uploadAvatar.public_id}.${uploadAvatar.format}`;
    const newPerson = await this.prismaHost.tx.person.create({
      data: { ...createPersonDto, personUrlImg }
    });
    if (!newPerson)
      throw new HttpErrorException(PERSON_ERROR_RESPONSE.PERSON_NOT_CREATED, HttpStatus.BAD_REQUEST);
    return newPerson;
  }

  findAll() {
    return `This action returns all person`;
  }

  findOne(id: number) {
    return `This action returns a #${id} person`;
  }

  update(id: number, updatePersonDto: UpdatePersonDto) {
    return `This action updates a #${id} person`;
  }

  remove(id: number) {
    return `This action removes a #${id} person`;
  }

  async findByDNI(dni: string) {
    const foundPerson = await this.prismaHost.tx.person.findUnique({ where: { dni } });
    return foundPerson;
  }

}
