import { Body, Controller, Delete, Get, Header, Param, Post, Put, Res ,UseGuards} from "@nestjs/common";
import { hasRole } from 'src/role/role.decorator';
import { Role } from 'src/role/role.enum';
import { RolesGuard } from 'src/role/role.guard';
import { JwtAuthGuard } from "src/auth/jwt-auth.guard";
import { SalaryDTO } from "src/dto/Salary.dto";
import { Salary001mb } from "src/entity/Salary001mb";
import { SalaryService } from "src/service/Salary.service";




@Controller('/testandreportstudio/api/salary')
export class SalaryController {
    constructor(private readonly salaryService: SalaryService) {
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Post("save")
    create(@Body() salaryDTO: SalaryDTO): Promise<Salary001mb> {
        return this.salaryService.create(salaryDTO);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Put("update")
    update(@Body() salaryDTO: SalaryDTO): Promise<Salary001mb> {
        return this.salaryService.update(salaryDTO);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Get('findAll')
    findAll(@Param('') unitslno: number): Promise<Salary001mb[]> {
        return this.salaryService.findAll();
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Get('slNo')
    findOne(@Param('slNo') slNo: number): Promise<Salary001mb> {
        return this.salaryService.findOne(slNo);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Delete('delete/:id')
    remove(@Param('id') id: string): Promise<void> {
        return this.salaryService.remove(id);
    }
}