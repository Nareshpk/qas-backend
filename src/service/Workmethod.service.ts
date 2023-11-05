import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { WorkmethodDTO } from "src/dto/Workmethod.dto";
import { Workmethod001mb } from "src/entity/Workmethod001mb";
import { Repository } from "typeorm";





@Injectable()
export class WorkmethodService {
    constructor(

        @InjectRepository(Workmethod001mb) private readonly workmethodRepository: Repository<Workmethod001mb>) {
    }
    async findAll(): Promise<Workmethod001mb[]> {
        return await this.workmethodRepository.find({ order: { slNo: "DESC" }, })
    }

    async create(workmethodDTO: WorkmethodDTO): Promise<Workmethod001mb> {
        const workmethod001mb = new Workmethod001mb();
        workmethod001mb.setProperties(workmethodDTO);
        return this.workmethodRepository.save(workmethod001mb);
    }
    async update(workmethodDTO: WorkmethodDTO): Promise<Workmethod001mb> {
        const workmethod001mb = new Workmethod001mb();
        workmethod001mb.setProperties(workmethodDTO);
        await this.workmethodRepository.update({ slNo: workmethod001mb.slNo }, workmethod001mb);
        return workmethod001mb;
    }

    findOne(id: number): Promise<Workmethod001mb> {
        return this.workmethodRepository.findOne(id);
    }
    async remove(id: string): Promise<void> {
        await this.workmethodRepository.delete(id);
    }
}