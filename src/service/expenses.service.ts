import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { ExpensesDTO } from "src/dto/Expensesdate.dto";
import { Expenses001mb } from "src/entity/Expenses001mb";
import { Repository } from "typeorm";





@Injectable()
export class ExpensesService {
    constructor(

        @InjectRepository(Expenses001mb) private readonly expensesRepository: Repository<Expenses001mb>) {
    }
    async findAll(): Promise<Expenses001mb[]> {
        return await this.expensesRepository.find({ order: { slNo: "DESC" }, })
    }

    async create(expensesDTO: ExpensesDTO): Promise<Expenses001mb> {
        const expenses001mb = new Expenses001mb();
        expenses001mb.setProperties(expensesDTO);
        return this.expensesRepository.save(expenses001mb);
    }
    async update(expensesDTO: ExpensesDTO): Promise<Expenses001mb> {
        const expenses001mb = new Expenses001mb();
        expenses001mb.setProperties(expensesDTO);
        await this.expensesRepository.update({ slNo: expenses001mb.slNo }, expenses001mb);
        return expenses001mb;
    }

    findOne(id: number): Promise<Expenses001mb> {
        return this.expensesRepository.findOne(id);
    }
    async remove(id: string): Promise<void> {
        await this.expensesRepository.delete(id);
    }
}