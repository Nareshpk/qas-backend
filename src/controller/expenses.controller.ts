import { Body, Controller, Delete, Get, Header, Param, Post, Put, Res ,UseGuards} from "@nestjs/common";
import { hasRole } from 'src/role/role.decorator';
import { Role } from 'src/role/role.enum';
import { RolesGuard } from 'src/role/role.guard';
import { JwtAuthGuard } from "src/auth/jwt-auth.guard";
import { ExpensesDTO } from "src/dto/Expensesdate.dto";
import { Expenses001mb } from "src/entity/Expenses001mb";
import { ExpensesService } from "src/service/expenses.service";


@Controller('/testandreportstudio/api/Expenses')
export class ExpensesController {
    constructor(private readonly expensesService: ExpensesService) {
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Post("save")
    create(@Body() expensesDTO: ExpensesDTO): Promise<Expenses001mb> {
        return this.expensesService.create(expensesDTO);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Put("update")
    update(@Body() expensesDTO: ExpensesDTO): Promise<Expenses001mb> {
        return this.expensesService.update(expensesDTO);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Get('findAll')
    findAll(@Param('') unitslno: number): Promise<Expenses001mb[]> {
        return this.expensesService.findAll();
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Get('slNo')
    findOne(@Param('slNo') slNo: number): Promise<Expenses001mb> {
        return this.expensesService.findOne(slNo);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Delete('delete/:id')
    remove(@Param('id') id: string): Promise<void> {
        return this.expensesService.remove(id);
    }
}