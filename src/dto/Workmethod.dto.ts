import { Workmethod001mb } from "src/entity/Workmethod001mb";

export class WorkmethodDTO {
    slNo?: number;
    worktype?: string;


    setProperties(workmethod001mb: Workmethod001mb) {
        this.slNo = workmethod001mb.slNo;
        this.worktype = workmethod001mb.worktype;
      }
}