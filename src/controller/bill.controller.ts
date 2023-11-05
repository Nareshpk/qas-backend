import { Body, Controller, Delete, Get, Header, Param, Post, Put, Res, UseGuards } from "@nestjs/common";
import { hasRole } from 'src/role/role.decorator';
import { Role } from 'src/role/role.enum';
import { RolesGuard } from 'src/role/role.guard';
import { JwtAuthGuard } from "src/auth/jwt-auth.guard";
import { Response } from "express";
import { BillDTO } from "src/dto/Bill.dto";
import { Bill001mb } from "src/entity/Bill001mb";
import { BillService } from "src/service/bill.service";



@Controller('/testandreportstudio/api/bills')
export class BillController {
    constructor(private readonly billService: BillService) {
    }

    @hasRole(Role.superadmin, Role.admin, Role.manager, Role.user)
    @UseGuards(JwtAuthGuard, RolesGuard)
    @Post("save")
    create(@Body() billDTO: BillDTO): Promise<Bill001mb> {
        return this.billService.create(billDTO);
    }

    @hasRole(Role.superadmin, Role.admin, Role.manager, Role.user)
    @UseGuards(JwtAuthGuard, RolesGuard)
    @Put("update")
    update(@Body() billDTO: BillDTO): Promise<Bill001mb> {
        return this.billService.update(billDTO);
    }
    @hasRole(Role.superadmin, Role.admin, Role.manager, Role.user)
    @UseGuards(JwtAuthGuard, RolesGuard)
    @Get('getCount')
    getCount(): Promise<string> {
        return this.billService.getCount();
    }


    @hasRole(Role.superadmin, Role.admin, Role.manager, Role.user)
    @UseGuards(JwtAuthGuard, RolesGuard)
    @Get('pdf/:id')
    @Header('Content-Type', 'application/pdf')
    async downloadIDPdf(@Param('id') id: number, @Res() response: Response) {
        return await this.billService.downloadIDPdf(id, response);
    }

    @hasRole(Role.superadmin, Role.admin, Role.manager, Role.user)
    @UseGuards(JwtAuthGuard, RolesGuard)
    @Get('pdfdate/:id/:days')
    @Header('Content-Type', 'application/pdf')
    async downloadDatePdf(@Param('id') id: number, @Param('days') days: any, @Res() response: Response) {
        return await this.billService.downloadDatePdf(id, days, response);
    }

    @hasRole(Role.superadmin, Role.admin, Role.manager, Role.user)
    @UseGuards(JwtAuthGuard, RolesGuard)
    @Get('pdfinvoice/:id/:days')
    @Header('Content-Type', 'application/pdf')
    async downloadInvoicePdf(@Param('id') id: number, @Param('days') days: number, @Res() response: Response) {
        return await this.billService.downloadInvoicePdf(id, days, response);
    }

    @hasRole(Role.superadmin, Role.admin, Role.manager, Role.user)
    @UseGuards(JwtAuthGuard, RolesGuard)
    @Get('pdfdatepaymetn/:id/:days/:payment')
    @Header('Content-Type', 'application/pdf')
    async downloadPaymentPdf(@Param('id') id: any, @Param('days') days: any, @Param('payment') payment: any, @Res() response: Response) {
        return await this.billService.downloadPaymentPdf(id, days, payment, response);
    }

    @hasRole(Role.superadmin, Role.admin, Role.manager, Role.user)
    @UseGuards(JwtAuthGuard, RolesGuard)
    @Get('findAll/:bslno2')
    findAll(@Param('bslno2') unitslno: number): Promise<Bill001mb[]> {
        return this.billService.findAll(unitslno);
    }

    @hasRole(Role.superadmin, Role.admin, Role.manager, Role.user)
    @UseGuards(JwtAuthGuard, RolesGuard)
    @Get(':slNo')
    findOne(@Param('slNo') slNo: number): Promise<Bill001mb> {
        return this.billService.findOne(slNo);
    }

    @hasRole(Role.superadmin, Role.admin, Role.manager, Role.user)
    @UseGuards(JwtAuthGuard, RolesGuard)
    @Delete('delete/:id')
    remove(@Param('id') id: string): Promise<void> {
        return this.billService.remove(id);
    }
}