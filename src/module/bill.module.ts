import { Module } from "@nestjs/common";
import { TypeOrmModule } from "@nestjs/typeorm";
import { BillController } from "src/controller/bill.controller";
import { Bill001mb } from "src/entity/Bill001mb";
import { Payment001wb } from "src/entity/Payment001wb";
import { User001mb } from "src/entity/User001mb";
import { BillService } from "src/service/bill.service";


@Module({
    imports: [TypeOrmModule.forFeature([Bill001mb,User001mb, Payment001wb])],
    providers: [BillService],
    controllers: [BillController],
})

export class BillModule { }