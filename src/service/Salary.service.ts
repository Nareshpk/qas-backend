import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { SalaryDTO } from "src/dto/Salary.dto";
import { Salary001mb } from "src/entity/Salary001mb";
import { Repository } from "typeorm";





@Injectable()
export class SalaryService {
    constructor(

        @InjectRepository(Salary001mb) private readonly salaryRepository: Repository<Salary001mb>) {
    }
    async findAll(): Promise<Salary001mb[]> {
        return await this.salaryRepository.find({ order: { slNo: "DESC" }, })
    }

    async create(salaryDTO: SalaryDTO): Promise<Salary001mb> {
        const salary001mb = new Salary001mb();
        salary001mb.setProperties(salaryDTO);
        return this.salaryRepository.save(salary001mb);
    }
    async update(salaryDTO: SalaryDTO): Promise<Salary001mb> {
        const salary001mb = new Salary001mb();
        salary001mb.setProperties(salaryDTO);
        await this.salaryRepository.update({ slNo: salary001mb.slNo }, salary001mb);
        return salary001mb;
    }

    findOne(id: number): Promise<Salary001mb> {
        return this.salaryRepository.findOne(id);
    }
    async remove(id: string): Promise<void> {
        await this.salaryRepository.delete(id);
    }
}