import { Column, Entity, OneToMany, PrimaryGeneratedColumn } from "typeorm";
import { User001mb } from "./User001mb";
import { RoleDTO } from "src/dto/Role.dto";

@Entity("role001mb", { schema: "invoice" })
export class Role001mb {
  @PrimaryGeneratedColumn({ type: "int", name: "id" })
  id: number;

  @Column("varchar", { name: "rolename", length: 40 })
  rolename: string;

  @OneToMany(() => User001mb, (user001mb) => user001mb.role)
  user001mbs: User001mb[];


  setProperties(roleDTO: RoleDTO) {
    this.id = roleDTO.id;
    this.rolename = roleDTO.rolename;
  }
}
