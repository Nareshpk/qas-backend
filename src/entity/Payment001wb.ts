import {
  Column,
  Entity,
  Index,
  JoinColumn,
  ManyToOne,
  PrimaryGeneratedColumn,
} from "typeorm";
import { Bill001mb } from "./Bill001mb";
import { PaymentDTO } from "src/dto/Payment.dto";

@Index("bslno", ["bslno"], {})
@Entity("payment001wb", { schema: "invoice" })
export class Payment001wb {
  @PrimaryGeneratedColumn({ type: "int", name: "sl_no" })
  slNo: number;

  @Column("int", { name: "bslno", nullable: true })
  bslno: number | null;

  @Column("varchar", { name: "workmethod", length: 200 })
  workmethod: string;

  @Column("int", { name: "amount" })
  amount: number;

  @ManyToOne(() => Bill001mb, (bill001mb) => bill001mb.payment001wbs, {
    onDelete: "CASCADE",
    onUpdate: "CASCADE",
  })
  @JoinColumn([{ name: "bslno", referencedColumnName: "slNo" }])
  bslno2: Bill001mb;


  setProperties(paymentDTO: PaymentDTO) {
    this.slNo = paymentDTO.slNo;
    this.bslno = paymentDTO.bslno;
    this.workmethod = paymentDTO.workmethod;
    this.amount = paymentDTO.amount;

  }
}
