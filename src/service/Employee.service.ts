import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { EmployeeDTO } from "src/dto/Employee.dto";
import { Employee001mb } from "src/entity/Employee001mb";
import { Repository } from "typeorm";





@Injectable()
export class EmployeeService {
    constructor(

        @InjectRepository(Employee001mb) private readonly employeeRepository: Repository<Employee001mb>) {
    }
    async findAll(): Promise<Employee001mb[]> {
        return await this.employeeRepository.find({ order: { slNo: "DESC" }, })
    }

    async create(employeeDTO: EmployeeDTO): Promise<Employee001mb> {
        const employee001mb = new Employee001mb();
        employee001mb.setProperties(employeeDTO);
        return this.employeeRepository.save(employee001mb);
    }
    async update(employeeDTO: EmployeeDTO): Promise<Employee001mb> {
        const employee001mb = new Employee001mb();
        employee001mb.setProperties(employeeDTO);
        await this.employeeRepository.update({ slNo: employee001mb.slNo }, employee001mb);
        return employee001mb;
    }

    findOne(id: number): Promise<Employee001mb> {
        return this.employeeRepository.findOne(id);
    }
    async remove(id: string): Promise<void> {
        await this.employeeRepository.delete(id);
    }
}