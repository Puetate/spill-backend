import { ApiProperty } from "@nestjs/swagger"
import { IsNotEmpty, IsString } from "class-validator"
import { IsIdCard } from "src/commons"

export class CreatePersonDto {
    @ApiProperty()
    @IsString()
    @IsNotEmpty()
    names: string;

    @ApiProperty()
    @IsString()
    @IsNotEmpty()
    surnames: string;

    @ApiProperty()
    @IsString()
    @IsNotEmpty()
    phone: string;

    @ApiProperty()
    @IsString()
    @IsNotEmpty()
    address: string;

    @ApiProperty()
    @IsIdCard()
    dni: string;

    @ApiProperty({ type: "string", format: "binary", required: true })
    @IsString()
    @IsNotEmpty()
    avatar: string;
}
