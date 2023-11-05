import { WorkmethodDTO } from "src/dto/Workmethod.dto";
import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity("workmethod001mb", { schema: "invoice" })
export class Workmethod001mb {
  @PrimaryGeneratedColumn({ type: "int", name: "sl_no" })
  slNo: number;

  @Column("varchar", { name: "worktype", length: 200 })
  worktype: string;

  setProperties(workmethodDTO: WorkmethodDTO) {
    this.slNo = workmethodDTO.slNo;
    this.worktype = workmethodDTO.worktype;
  }
}
