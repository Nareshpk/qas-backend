import { Module } from "@nestjs/common";
import { TypeOrmModule } from "@nestjs/typeorm";
import { SalaryController } from "src/controller/Salary.controller";
import { Salary001mb } from "src/entity/Salary001mb";
import { User001mb } from "src/entity/User001mb";
import { SalaryService } from "src/service/Salary.service";


@Module({
    imports: [TypeOrmModule.forFeature([Salary001mb,User001mb])],
    providers: [SalaryService],
    controllers: [SalaryController],
})

export class SalaryModule { }