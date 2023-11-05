import { Module } from "@nestjs/common";
import { TypeOrmModule } from "@nestjs/typeorm";
import { PaymentController } from "src/controller/payment.controller";
import { Payment001wb } from "src/entity/Payment001wb";
import { User001mb } from "src/entity/User001mb";
import { PaymentService } from "src/service/paymet.service";


@Module({
    imports: [TypeOrmModule.forFeature([Payment001wb,User001mb])],
    providers: [PaymentService],
    controllers: [PaymentController],
})

export class PaymentModule { }