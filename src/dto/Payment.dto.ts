import { Payment001wb } from "src/entity/Payment001wb";

export class PaymentDTO {
    slNo?: number;
    bslno?: number;
    workmethod?: string;
    amount?: number;
    bslno2?: number;
    setProperties(payment001wb: Payment001wb) {
        this.slNo = payment001wb.slNo;
        this.bslno = payment001wb.bslno;
        this.workmethod = payment001wb.workmethod;
        this.amount = payment001wb.amount;
    }
}