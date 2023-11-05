import { Bill001mb } from "src/entity/Bill001mb";
import { Payment001wb } from "src/entity/Payment001wb";

export class BillDTO {
    slNo?: number;
    billno?: string;
    cusname?: string;
    mobile?: string;
    address?: string;
    date?: Date | any;
    veichalmodel?: string;
    regno?: string;
    kms?: string;
    totalamount?: number;
    payment?: string;
    payment001wbs: Payment001wb[]


    setProperties(bill001mb: Bill001mb) {
        this.slNo = bill001mb.slNo;
        this.billno = bill001mb.billno;
        this.cusname = bill001mb.cusname;
        this.mobile = bill001mb.mobile;
        this.address = bill001mb.address;
        this.date = bill001mb.date;
        this.veichalmodel = bill001mb.veichalmodel;
        this.regno = bill001mb.regno;
        this.kms = bill001mb.kms;
        this.totalamount = bill001mb.totalamount;
        this.payment = bill001mb.payment;
      
    }
}