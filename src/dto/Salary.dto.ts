import { Employee001mb } from "src/entity/Employee001mb";
import { Salary001mb } from "src/entity/Salary001mb";

export class SalaryDTO {
    slNo?: number;
    employename?: string;
    employesalary?: string;
    employeslarydate?: Date;


    setProperties(salary001mb: Salary001mb) {
        this.slNo = salary001mb.slNo;
        this.employename = salary001mb.employename;
        this.employesalary = salary001mb.employesalary;
        this.employeslarydate = salary001mb.employeslarydate;

    }
}