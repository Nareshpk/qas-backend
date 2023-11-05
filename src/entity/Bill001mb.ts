import { Column, Entity, OneToMany, PrimaryGeneratedColumn } from "typeorm";
import { Payment001wb } from "./Payment001wb";
import { BillDTO } from "src/dto/Bill.dto";

@Entity("bill001mb", { schema: "invoice" })
export class Bill001mb {
  @PrimaryGeneratedColumn({ type: "int", name: "sl_no" })
  slNo: number;

  @Column("varchar", { name: "billno", length: 200 })
  billno: string;

  @Column("varchar", { name: "cusname", length: 200 })
  cusname: string;

  @Column("varchar", { name: "mobile", length: 200 })
  mobile: string;

  @Column("varchar", { name: "address", length: 200 })
  address: string;

  @Column({ name: "date", type:"date" })
  date: Date

  @Column("varchar", { name: "veichalmodel", length: 200 })
  veichalmodel: string;

  @Column("varchar", { name: "regno", length: 200 })
  regno: string;

  @Column("varchar", { name: "kms", length: 20 })
  kms: string;

  @Column("int", { name: "totalamount", nullable: true })
  totalamount: number | null;

  @Column("varchar", { name: "payment", nullable: true, length: 200 })
  payment: string | null;

  @OneToMany(() => Payment001wb, (payment001wb) => payment001wb.bslno2)
  payment001wbs: Payment001wb[];


  setProperties(billDTO: BillDTO) {
    this.slNo = billDTO.slNo;
    this.billno = billDTO.billno;
    this.cusname = billDTO.cusname;
    this.mobile = billDTO.mobile;
    this.address = billDTO.address;
    this.date = billDTO.date;
    this.veichalmodel = billDTO.veichalmodel;
    this.regno = billDTO.regno;
    this.kms = billDTO.kms;
    this.totalamount = billDTO.totalamount;
    this.payment = billDTO.payment;
  }
}
