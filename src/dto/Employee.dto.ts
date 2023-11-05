import { Employee001mb } from "src/entity/Employee001mb";

export class EmployeeDTO {
    slNo?: number;
    ename?: string;
    econtect?: string;
    eadrress?: string;
    edob?: string;
    ejoin?: string | any;

    setProperties(employee001mb: Employee001mb) {
        this.slNo = employee001mb.slNo;
        this.ename = employee001mb.ename;
        this.econtect = employee001mb.econtect;
        this.eadrress = employee001mb.eadrress;
        this.edob = employee001mb.edob;
        this.ejoin = employee001mb.ejoin;
    }
}