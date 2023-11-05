import { Body, Controller, Delete, Get, Header, Param, Post, Put, Res ,UseGuards} from "@nestjs/common";
import { hasRole } from 'src/role/role.decorator';
import { Role } from 'src/role/role.enum';
import { RolesGuard } from 'src/role/role.guard';
import { JwtAuthGuard } from "src/auth/jwt-auth.guard";
import { WorkmethodDTO } from "src/dto/Workmethod.dto";
import { Workmethod001mb } from "src/entity/Workmethod001mb";
import { WorkmethodService } from "src/service/Workmethod.service";




@Controller('/testandreportstudio/api/Workmethod')
export class WorkmethodController {
    constructor(private readonly workmethodService: WorkmethodService) {
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Post("save")
    create(@Body() workmethodDTO: WorkmethodDTO): Promise<Workmethod001mb> {
        return this.workmethodService.create(workmethodDTO);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Put("update")
    update(@Body() workmethodDTO: WorkmethodDTO): Promise<Workmethod001mb> {
        return this.workmethodService.update(workmethodDTO);
    }


    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Get('findAll')
    findAll(@Param('') unitslno: number): Promise<Workmethod001mb[]> {
        return this.workmethodService.findAll();
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Get('slNo')
    findOne(@Param('slNo') slNo: number): Promise<Workmethod001mb> {
        return this.workmethodService.findOne(slNo);
    }

    @hasRole(Role.superadmin)
	@UseGuards(JwtAuthGuard, RolesGuard)
    @Delete('delete/:id')
    remove(@Param('id') id: string): Promise<void> {
        return this.workmethodService.remove(id);
    }
}