import { Module } from "@nestjs/common";
import { TypeOrmModule } from "@nestjs/typeorm";
import { WorkmethodController } from "src/controller/Workmethod.controller";
import { User001mb } from "src/entity/User001mb";
import { Workmethod001mb } from "src/entity/Workmethod001mb";
import { WorkmethodService } from "src/service/Workmethod.service";


@Module({
    imports: [TypeOrmModule.forFeature([Workmethod001mb, User001mb])],
    providers: [WorkmethodService],
    controllers: [WorkmethodController],
})

export class WorkmethodModule { }