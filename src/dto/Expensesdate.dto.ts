import { Expenses001mb } from "src/entity/Expenses001mb";


export class ExpensesDTO {
    slNo?: number;
    expensesname?: string;
    expensesamount?: number;
    expensesdate?: Date;


    setProperties(expenses001mb: Expenses001mb) {
        this.slNo = expenses001mb.slNo;
        this.expensesname = expenses001mb.expensesname;
        this.expensesamount = expenses001mb.expensesamount;
        this.expensesdate = expenses001mb.expensesdate;

    }
}