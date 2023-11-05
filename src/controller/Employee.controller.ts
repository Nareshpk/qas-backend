import { Body, Controller, Delete, Get, Header, Param, Post, Put, Res ,UseGuards} from "@nestjs/common";
import { hasRole } from 'src/role/role.decorator';
import { Role } from 'src/role/role.enum';
import { RolesGuard } from 'src/role/role.guard';
import { JwtAuthGuard } from "src/auth/jwt-auth.guard";
import { EmployeeDTO } from "src/dto/Employee.dto";
import { PaymentDTO } from "src/dto/Payment.dto";
import { Employee001mb } from "src/entity/Employee001mb";
import { Payment001wb } from "src/entity/Payment001wb";
import { EmployeeService } from "src/service/Employee.service";
import { PaymentService } from "src/service/paymet.service";




@Controller('/testandreportstudio/api/employee')
export class EmployeeController {
    constructor(private readonly employeeService: EmployeeService) {
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Post("save")
    create(@Body() employeeDTO: EmployeeDTO): Promise<Employee001mb> {
        return this.employeeService.create(employeeDTO);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Put("update")
    update(@Body() employeeDTO: EmployeeDTO): Promise<Employee001mb> {
        return this.employeeService.update(employeeDTO);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Get('findAll')
    findAll(@Param('') unitslno: number): Promise<Employee001mb[]> {
        return this.employeeService.findAll();
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Get('slNo')
    findOne(@Param('slNo') slNo: number): Promise<Employee001mb> {
        return this.employeeService.findOne(slNo);
    }
    
    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Delete('delete/:id')
    remove(@Param('id') id: string): Promise<void> {
        return this.employeeService.remove(id);
    }
}