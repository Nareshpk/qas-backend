import { Module } from "@nestjs/common";
import { TypeOrmModule } from "@nestjs/typeorm";
import { EmployeeController } from "src/controller/Employee.controller";
import { Employee001mb } from "src/entity/Employee001mb";
import { User001mb } from "src/entity/User001mb";
import { EmployeeService } from "src/service/Employee.service";


@Module({
    imports: [TypeOrmModule.forFeature([Employee001mb,User001mb])],
    providers: [EmployeeService],
    controllers: [EmployeeController],
})

export class EmployeeModule { }