import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { PaymentDTO } from "src/dto/Payment.dto";
import { Payment001wb } from "src/entity/Payment001wb";
import { Repository } from "typeorm";





@Injectable()
export class PaymentService {
    constructor(

        @InjectRepository(Payment001wb) private readonly paymentRepository: Repository<Payment001wb>) {
    }
    async findAll(unitslno: any): Promise<Payment001wb[]> {
        return await this.paymentRepository.find({ order: { slNo: "DESC" }, where: { unitslno: unitslno } })
    }

    async create(paymentDTO: PaymentDTO): Promise<Payment001wb> {
        const payment001wb = new Payment001wb();
        payment001wb.setProperties(paymentDTO);
        return this.paymentRepository.save(payment001wb);
    }
    async update(paymentDTO: PaymentDTO): Promise<Payment001wb> {
        const payment001wb = new Payment001wb();
        payment001wb.setProperties(paymentDTO);
        await this.paymentRepository.update({ slNo: payment001wb.slNo }, payment001wb);
        return payment001wb;
    }

    findOne(id: number): Promise<Payment001wb> {
        return this.paymentRepository.findOne(id);
    }
    async remove(id: string): Promise<void> {
        await this.paymentRepository.delete(id);
    }
}