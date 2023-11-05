import { Module } from "@nestjs/common";
import { TypeOrmModule } from "@nestjs/typeorm";
import { ExceldownloadController } from "src/controller/Exceldownload.controller";
import { BillController } from "src/controller/bill.controller";
import { Bill001mb } from "src/entity/Bill001mb";
import { Expenses001mb } from "src/entity/Expenses001mb";
import { Payment001wb } from "src/entity/Payment001wb";
import { Salary001mb } from "src/entity/Salary001mb";
import { User001mb } from "src/entity/User001mb";
import { ExceldownloadService } from "src/service/Exceldownload.service";
import { BillService } from "src/service/bill.service";


@Module({
    imports: [TypeOrmModule.forFeature([Bill001mb, Payment001wb, Salary001mb,User001mb, Expenses001mb])],
    providers: [ExceldownloadService],
    controllers: [ExceldownloadController],
})

export class ExceldownloadModule { }