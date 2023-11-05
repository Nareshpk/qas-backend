import { EmployeeDTO } from "src/dto/Employee.dto";
import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity("employee001mb", { schema: "invoice" })
export class Employee001mb {
  @PrimaryGeneratedColumn({ type: "int", name: "sl_no" })
  slNo: number;

  @Column("varchar", { name: "ename", length: 200 })
  ename: string;

  @Column("varchar", { name: "econtect", length: 200 })
  econtect: string;

  @Column("varchar", { name: "eadrress", length: 200 })
  eadrress: string;

  @Column("varchar", { name: "edob", length: 200 })
  edob: string;

  @Column("varchar", { name: "ejoin", length: 200 })
  ejoin: string;

  setProperties(employeeDTO: EmployeeDTO) {
    this.slNo = employeeDTO.slNo;
    this.ename = employeeDTO.ename;
    this.econtect = employeeDTO.econtect;
    this.eadrress = employeeDTO.eadrress;
    this.edob = employeeDTO.edob;
    this.ejoin = employeeDTO.ejoin;
  }
}
