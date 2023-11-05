import { ExpensesDTO } from "src/dto/Expensesdate.dto";
import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity("expenses001mb", { schema: "invoice" })
export class Expenses001mb {
  @PrimaryGeneratedColumn({ type: "int", name: "sl_no" })
  slNo: number;

  @Column("varchar", { name: "expensesname", length: 200 })
  expensesname: string;

  @Column("int", { name: "expensesamount" })
  expensesamount: number;


  @Column({ name: "expensesdate", type:"date" })
  expensesdate: Date

  setProperties(expensesDTO: ExpensesDTO) {
    this.slNo = expensesDTO.slNo;
    this.expensesname = expensesDTO.expensesname;
    this.expensesamount = expensesDTO.expensesamount;
    this.expensesdate = expensesDTO.expensesdate;
  }
}
