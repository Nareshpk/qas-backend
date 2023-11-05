import { Body, Controller, Delete, Get, Header, Param, Post, Put, Res, UseGuards } from "@nestjs/common";
import { hasRole } from 'src/role/role.decorator';
import { Role } from 'src/role/role.enum';
import { RolesGuard } from 'src/role/role.guard';
import { JwtAuthGuard } from "src/auth/jwt-auth.guard";
import { PaymentDTO } from "src/dto/Payment.dto";
import { Payment001wb } from "src/entity/Payment001wb";
import { PaymentService } from "src/service/paymet.service";




@Controller('/testandreportstudio/api/payment')
export class PaymentController {
    constructor(private readonly paymentService: PaymentService) {
    }

    @hasRole(Role.superadmin)
    @UseGuards(JwtAuthGuard, RolesGuard)
    @Post("save")
    create(@Body() paymentDTO: PaymentDTO): Promise<Payment001wb> {
        return this.paymentService.create(paymentDTO);
    }

    @hasRole(Role.superadmin)
    @UseGuards(JwtAuthGuard, RolesGuard)
    @Put("update")
    update(@Body() paymentDTO: PaymentDTO): Promise<Payment001wb> {
        return this.paymentService.update(paymentDTO);
    }


    @hasRole(Role.superadmin)
    @UseGuards(JwtAuthGuard, RolesGuard)
    @Get(':slNo')
    findOne(@Param('slNo') slNo: number): Promise<Payment001wb> {
        return this.paymentService.findOne(slNo);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Delete('delete/:id')
    remove(@Param('id') id: string): Promise<void> {
        return this.paymentService.remove(id);
    }
}