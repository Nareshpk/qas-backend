import { Module } from "@nestjs/common";
import { TypeOrmModule } from "@nestjs/typeorm";
import { ExpensesController } from "src/controller/expenses.controller";
import { Expenses001mb } from "src/entity/Expenses001mb";
import { User001mb } from "src/entity/User001mb";
import { ExpensesService } from "src/service/expenses.service";



@Module({
    imports: [TypeOrmModule.forFeature([Expenses001mb,User001mb])],
    providers: [ExpensesService],
    controllers: [ExpensesController],
})

export class ExpensesModule { }