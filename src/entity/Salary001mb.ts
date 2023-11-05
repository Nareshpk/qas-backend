import { SalaryDTO } from "src/dto/Salary.dto";
import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity("salary001mb", { schema: "invoice" })
export class Salary001mb {
  @PrimaryGeneratedColumn({ type: "int", name: "sl_no" })
  slNo: number;

  @Column("varchar", { name: "employename", length: 200 })
  employename: string;

  @Column("varchar", { name: "employesalary", length: 200 })
  employesalary: string;

  @Column({ name: "employeslarydate", type:"date" })
  employeslarydate: Date

  setProperties(salaryDTO: SalaryDTO) {
    this.slNo = salaryDTO.slNo;
    this.employename = salaryDTO.employename;
    this.employesalary = salaryDTO.employesalary;
    this.employeslarydate = salaryDTO.employeslarydate;

  }
}
