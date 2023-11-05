import { Injectable, Req, Res } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";


import { Between, LessThanOrEqual, Repository, getManager } from "typeorm";
import { BillDTO } from "src/dto/Bill.dto";
import { Bill001mb } from "src/entity/Bill001mb";
import { Payment001wb } from "src/entity/Payment001wb";
import { Response } from "express";
import { createReadStream } from "fs";
import { Request } from "supertest";
import { format } from "date-fns";
import { Salary001mb } from "src/entity/Salary001mb";
import { Expenses001mb } from "src/entity/Expenses001mb";
var path = require("path");
var converter = require("number-to-words");
const moment = require("moment");
const sequelize = require('sequelize')
const Op = sequelize.Op
var path = require("path");
const excel = require("exceljs");
var converter = require("number-to-words");
let value5 = 0;

@Injectable()
export class ExceldownloadService {
    constructor(
        @InjectRepository(Bill001mb) private readonly billRepository: Repository<Bill001mb>,
        @InjectRepository(Payment001wb) private readonly paymentRepository: Repository<Payment001wb>,
        @InjectRepository(Salary001mb) private readonly salaryRepository: Repository<Salary001mb>,
        @InjectRepository(Expenses001mb) private readonly expensesRepository: Repository<Expenses001mb>
    ) {
    }

    async downloadExcel(startdate: any, enddate: any, @Req() request: Request, @Res() response: Response) {
        //    gte
        // Op.lte
        // console.log("startdate", startdate);

        let auditbill = await this.billRepository.find({
            relations: [
                "payment001wbs",
            ],
        });

        let expensesdetails = await this.expensesRepository.find();

        let salarydetails = await this.salaryRepository.find();

        let Auditfindall = auditbill.filter((item) => {
            return new Date(startdate) <= new Date(item.date) && new Date(enddate) >= new Date(item.date)
        });

        let expensesfindall = expensesdetails.filter((item) => {
            return new Date(startdate) <= new Date(item.expensesdate) && new Date(enddate) >= new Date(item.expensesdate)
        });

        let salaryfindall = salarydetails.filter((item) => {
            return new Date(startdate) <= new Date(item.employeslarydate) && new Date(enddate) >= new Date(item.employeslarydate)
        });




        let startDate = new Date(startdate);
        let endDates = new Date(enddate);
        let monthsAndYears: any = [];
        let currentDate = new Date(startDate);
        let endDate = new Date(endDates);

        while (currentDate <= endDate) {
            
            let formattedDate = moment(currentDate).format('YYYY-MM');
            monthsAndYears.push(formattedDate);
            currentDate.setMonth(currentDate.getMonth() + 1);
        }

        let aditTotalAmount = 0;
        let expensesAmount = 0;
        let salaryamount: any = 0;
        let CashAmount = 0;
        let UPIAmount = 0;
        let TAmount = 0;
        let ExpensTAmount = 0;
        let expenAmount = 0;
        let salryAmount: any = 0;
        let totalAmount: any = 0;

        for (let i = 0; i < Auditfindall.length; i++) {
            aditTotalAmount = aditTotalAmount + Auditfindall[i].totalamount
            for (let j = 0; j < monthsAndYears.length; j++) {
                if (monthsAndYears[j] === moment(Auditfindall[i].date).format("YYYY-MM")) {
                    if (Auditfindall[i].payment == "Cash") {
                        CashAmount = CashAmount + Auditfindall[i].totalamount;
                    } else {
                        UPIAmount = UPIAmount + Auditfindall[i].totalamount;
                    }

                }
            }
        }

        for (let i = 0; i < expensesfindall.length; i++) {
            expensesAmount = expensesAmount + expensesfindall[i].expensesamount
            for (let j = 0; j < monthsAndYears.length; j++) {
                if (monthsAndYears[j] === moment(expensesfindall[i].expensesdate).format("YYYY-MM")) {
                    expenAmount = expenAmount + expensesfindall[i].expensesamount;
                }
            }
        }


        for (let i = 0; i < salaryfindall.length; i++) {
            salaryamount = parseInt(salaryamount) + parseInt(salaryfindall[i].employesalary)
            for (let j = 0; j < monthsAndYears.length; j++) {
                if (monthsAndYears[j] === moment(salaryfindall[i].employeslarydate).format("YYYY-MM")) {
                    salryAmount = salryAmount + parseInt(salaryfindall[i].employesalary);
                }
            }
        }

        TAmount = TAmount + CashAmount + UPIAmount;
        ExpensTAmount = salryAmount + expenAmount;
        totalAmount = TAmount - ExpensTAmount;

        // console.log("salryAmount", totalAmount); 
        let Cashamount = [];
        let UPIamount = [];
        let salryamount = [];
        let expencamount = [];
        let Tamount = [];
        let ExpenTamount = [];
        let FinalTamount = [];

        let array_zero = 0

        for (let i = 0; i < monthsAndYears.length; i++) {
            Cashamount.push(array_zero)
            UPIamount.push(array_zero)
            salryamount.push(array_zero)
            expencamount.push(array_zero)
            Tamount.push(array_zero)
            ExpenTamount.push(array_zero)
            FinalTamount.push(array_zero)
        }
        console.log(FinalTamount)

        for (let i = 0; i < monthsAndYears.length; i++) {
            for (let j = 0; j < Auditfindall.length; j++) {
                if (monthsAndYears[i] == moment(Auditfindall[j].date).format("YYYY-MM")) {
                    if (Auditfindall[j].payment == "Cash") {
                        Cashamount[i] = Cashamount[i] += Auditfindall[j].totalamount

                    } else {
                        UPIamount[i] = UPIamount[i] += Auditfindall[j].totalamount
                    }
                    Tamount[i] = UPIamount[i] + Cashamount[i]

                }
            }

            for (let j = 0; j < salaryfindall.length; j++) {
                if (monthsAndYears[i] == moment(salaryfindall[j].employeslarydate).format("YYYY-MM")) {
                    salryamount[i] = salryamount[i] += parseInt(salaryfindall[j].employesalary)
                }
            }
            for (let j = 0; j < expensesfindall.length; j++) {
                if (monthsAndYears[i] == moment(expensesfindall[j].expensesdate).format("YYYY-MM")) {
                    expencamount[i] = expencamount[i] += expensesfindall[j].expensesamount
                }
            }
            ExpenTamount[i] = expencamount[i] + salryamount[i]
            FinalTamount[i] = Tamount[i] - ExpenTamount[i]
        }
        let CTamount = 0;
        let upiTamount = 0;
        let totalTamount = 0;
        let exTamount = 0;
        let FTamount = 0;
        for (let i = 0; i < Cashamount.length; i++) {
            CTamount = CTamount + Cashamount[i];
        }
        for (let i = 0; i < UPIamount.length; i++) {
            upiTamount = upiTamount + UPIamount[i];
        }
        for (let i = 0; i < Tamount.length; i++) {
            totalTamount = totalTamount + Tamount[i];
        }
        for (let i = 0; i < ExpenTamount.length; i++) {
            exTamount = exTamount + ExpenTamount[i];
        }
        for (let i = 0; i < FinalTamount.length; i++) {
            FTamount = FTamount + FinalTamount[i];
        }

        let workbook = new excel.Workbook();

        for (let i = 0; i < Auditfindall.length; i++) {
            let worksheet = workbook.addWorksheet("PurchaseReq_Reports" + i); // creating worksheet
            worksheet.getRow(1).height = 40;
            worksheet.columns = [
                { key: "A", width: 20.0 },
                { key: "B", width: 20.0 },
                { key: "C", width: 20.0 },
                { key: "D", width: 20.0 },
                { key: "E", width: 20.0 },
                { key: "F", width: 20.0 },
                { key: "G", width: 20.0 },
                { key: "H", width: 20.0 },
                { key: "I", width: 20.0 },
                { key: "J", width: 20.0 },
                { key: "K", width: 20.0 },
                { key: "L", width: 20.0 },
            ];
            worksheet.mergeCells("A1");
            worksheet.getCell("A1").value = "SL No";
            worksheet.getCell("A1").font = {
                size: 14,
                bold: true,
            };
            worksheet.getCell("A1").alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };

            worksheet.mergeCells("B1");
            worksheet.getCell("B1").value = "Date";
            worksheet.getCell("B1").font = {
                size: 14,
                bold: true,
            };
            worksheet.getCell("B1").alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };

            worksheet.mergeCells("C1");
            worksheet.getCell("C1").value = "Veichal Model";
            worksheet.getCell("C1").font = {
                size: 14,
                bold: true,
            };
            worksheet.getCell("C1").alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };

            worksheet.mergeCells("D1");
            worksheet.getCell("D1").value = "Register Number ";
            worksheet.getCell("D1").font = {
                size: 14,
                bold: true,
            };
            worksheet.getCell("D1").alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };

            worksheet.mergeCells("E1");
            worksheet.getCell("E1").value = "Amount";
            worksheet.getCell("E1").font = {
                size: 14,
                bold: true,
            };
            worksheet.getCell("E1").alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };

            worksheet.mergeCells("F1");
            worksheet.getCell("F1").value = "Cash Type";
            worksheet.getCell("F1").font = {
                size: 14,
                bold: true,
            };
            worksheet.getCell("F1").alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };

            worksheet.mergeCells("G1");
            worksheet.getCell("G1").value = "Expenses Date";
            worksheet.getCell("G1").font = {
                size: 14,
                bold: true,
            };
            worksheet.getCell("G1").alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };



            worksheet.mergeCells("H1");
            worksheet.getCell("H1").value = "Expenses Name";
            worksheet.getCell("H1").font = {
                size: 14,
                bold: true,
            };
            worksheet.getCell("H1").alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };



            worksheet.mergeCells("I1");
            worksheet.getCell("I1").value = "Expenses Amount";
            worksheet.getCell("I1").font = {
                size: 14,
                bold: true,
            };
            worksheet.getCell("I1").alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };


            worksheet.mergeCells("J1");
            worksheet.getCell("J1").value = "Salary Date";
            worksheet.getCell("J1").font = {
                size: 14,
                bold: true,
            };
            worksheet.getCell("J1").alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };



            worksheet.mergeCells("K1");
            worksheet.getCell("K1").value = "Employee Name";
            worksheet.getCell("K1").font = {
                size: 14,
                bold: true,
            };
            worksheet.getCell("K1").alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };



            worksheet.mergeCells("L1");
            worksheet.getCell("L1").value = "Amount";
            worksheet.getCell("L1").font = {
                size: 14,
                bold: true,
            };
            worksheet.getCell("L1").alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };

            worksheet.mergeCells(`A${Auditfindall.length + 3}`);
            worksheet.getCell(`A${Auditfindall.length + 3}`).value = "Total Amount";
            worksheet.getCell(`A${Auditfindall.length + 3}`).font = {
                size: 14,
                bold: true,
            };
            worksheet.getCell(`A${Auditfindall.length + 3}`).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };


            worksheet.mergeCells(`G${Auditfindall.length + 3}`);
            worksheet.getCell(`G${Auditfindall.length + 3}`).value = "Total Amount";
            worksheet.getCell(`G${Auditfindall.length + 3}`).font = {
                size: 14,
                bold: true,
            };
            worksheet.getCell(`G${Auditfindall.length + 3}`).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };

            worksheet.mergeCells(`J${Auditfindall.length + 3}`);
            worksheet.getCell(`J${Auditfindall.length + 3}`).value = "Total Amount";
            worksheet.getCell(`J${Auditfindall.length + 3}`).font = {
                size: 14,
                bold: true,
            };
            worksheet.getCell(`J${Auditfindall.length + 3}`).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };


            worksheet.mergeCells(`E${Auditfindall.length + 3}`);
            worksheet.getCell(`E${Auditfindall.length + 3}`).value = aditTotalAmount;
            worksheet.getCell(`E${Auditfindall.length + 3}`).font = {
                size: 14,
                bold: true,
            };
            worksheet.getCell(`E${Auditfindall.length + 3}`).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };

            worksheet.mergeCells(`I${Auditfindall.length + 3}`);
            worksheet.getCell(`I${Auditfindall.length + 3}`).value = expensesAmount;
            worksheet.getCell(`I${Auditfindall.length + 3}`).font = {
                size: 14,
                bold: true,
            };
            worksheet.getCell(`I${Auditfindall.length + 3}`).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };


            worksheet.mergeCells(`L${Auditfindall.length + 3}`);
            worksheet.getCell(`L${Auditfindall.length + 3}`).value = salaryamount;
            worksheet.getCell(`L${Auditfindall.length + 3}`).font = {
                size: 14,
                bold: true,
            };
            worksheet.getCell(`L${Auditfindall.length + 3}`).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };



            // ****************************Annueal Deatails************************
            worksheet.mergeCells(`A${Auditfindall.length + 7}`);
            worksheet.getCell(`A${Auditfindall.length + 7}`).value = "Month";
            worksheet.getCell(`A${Auditfindall.length + 7}`).font = {
                size: 14,
                bold: true,
            };
            worksheet.getCell(`A${Auditfindall.length + 7}`).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };

            worksheet.mergeCells(`B${Auditfindall.length + 7}`);
            worksheet.getCell(`B${Auditfindall.length + 7}`).value = "Cash";
            worksheet.getCell(`B${Auditfindall.length + 7}`).font = {
                size: 14,
                bold: true,
            };
            worksheet.getCell(`B${Auditfindall.length + 7}`).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };

            worksheet.mergeCells(`C${Auditfindall.length + 7}`);
            worksheet.getCell(`C${Auditfindall.length + 7}`).value = "UPI";
            worksheet.getCell(`C${Auditfindall.length + 7}`).font = {
                size: 14,
                bold: true,
            };
            worksheet.getCell(`C${Auditfindall.length + 7}`).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };

            worksheet.mergeCells(`D${Auditfindall.length + 7}`);
            worksheet.getCell(`D${Auditfindall.length + 7}`).value = "Total";
            worksheet.getCell(`D${Auditfindall.length + 7}`).font = {
                size: 14,
                bold: true,
            };
            worksheet.getCell(`D${Auditfindall.length + 7}`).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };

            worksheet.mergeCells(`E${Auditfindall.length + 7}`);
            worksheet.getCell(`E${Auditfindall.length + 7}`).value = "Expense";
            worksheet.getCell(`E${Auditfindall.length + 7}`).font = {
                size: 14,
                bold: true,
            };
            worksheet.getCell(`E${Auditfindall.length + 7}`).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };

            worksheet.mergeCells(`F${Auditfindall.length + 7}`);
            worksheet.getCell(`F${Auditfindall.length + 7}`).value = "profit";
            worksheet.getCell(`F${Auditfindall.length + 7}`).font = {
                size: 14,
                bold: true,
            };
            worksheet.getCell(`F${Auditfindall.length + 7}`).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };


            worksheet.mergeCells(`A${Auditfindall.length + 7 + monthsAndYears.length + 2}`);
            worksheet.getCell(`A${Auditfindall.length + 7 + monthsAndYears.length + 2}`).value = "Total";
            worksheet.getCell(`A${Auditfindall.length + 7 + monthsAndYears.length + 2}`).font = {
                size: 14,
                bold: true,
            };
            worksheet.getCell(`A${Auditfindall.length + 7 + monthsAndYears.length + 2}`).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };

            worksheet.mergeCells(`B${Auditfindall.length + 7 + monthsAndYears.length + 2}`);
            worksheet.getCell(`B${Auditfindall.length + 7 + monthsAndYears.length + 2}`).value = CTamount;
            worksheet.getCell(`B${Auditfindall.length + 7 + monthsAndYears.length + 2}`).font = {
                size: 14,
                bold: true,
            };
            worksheet.getCell(`B${Auditfindall.length + 7 + monthsAndYears.length + 2}`).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };

            worksheet.mergeCells(`C${Auditfindall.length + 7 + monthsAndYears.length + 2}`);
            worksheet.getCell(`C${Auditfindall.length + 7 + monthsAndYears.length + 2}`).value = upiTamount;
            worksheet.getCell(`C${Auditfindall.length + 7 + monthsAndYears.length + 2}`).font = {
                size: 14,
                bold: true,
            };
            worksheet.getCell(`C${Auditfindall.length + 7 + monthsAndYears.length + 2}`).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };

            worksheet.mergeCells(`D${Auditfindall.length + 7 + monthsAndYears.length + 2}`);
            worksheet.getCell(`D${Auditfindall.length + 7 + monthsAndYears.length + 2}`).value = totalTamount;
            worksheet.getCell(`D${Auditfindall.length + 7 + monthsAndYears.length + 2}`).font = {
                size: 14,
                bold: true,
            };
            worksheet.getCell(`D${Auditfindall.length + 7 + monthsAndYears.length + 2}`).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };

            worksheet.mergeCells(`E${Auditfindall.length + 7 + monthsAndYears.length + 2}`);
            worksheet.getCell(`E${Auditfindall.length + 7 + monthsAndYears.length + 2}`).value = exTamount;
            worksheet.getCell(`E${Auditfindall.length + 7 + monthsAndYears.length + 2}`).font = {
                size: 14,
                bold: true,
            };
            worksheet.getCell(`E${Auditfindall.length + 7 + monthsAndYears.length + 2}`).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };

            worksheet.mergeCells(`F${Auditfindall.length + 7 + monthsAndYears.length + 2}`);
            worksheet.getCell(`F${Auditfindall.length + 7 + monthsAndYears.length + 2}`).value = FTamount;
            worksheet.getCell(`F${Auditfindall.length + 7 + monthsAndYears.length + 2}`).font = {
                size: 14,
                bold: true,
            };
            worksheet.getCell(`F${Auditfindall.length + 7 + monthsAndYears.length + 2}`).alignment = {
                vertical: "middle",
                horizontal: "center",
                wraptext: true,
            };
            // *********************************************************************

            for (let j = 0; j < monthsAndYears.length; j++) {
                let temps = j + Auditfindall.length + 7 + 1;
                worksheet.mergeCells("A" + temps);
                worksheet.getCell("A" + temps).value = monthsAndYears[j];
                worksheet.getCell("A" + temps).font = {
                    size: 12,
                    bold: true,
                };
                worksheet.getCell("A" + temps).alignment = {
                    vertical: "middle",
                    horizontal: "center",
                    wraptext: true,
                };

                worksheet.mergeCells("B" + temps);
                worksheet.getCell("B" + temps).value = Cashamount[j];
                worksheet.getCell("B" + temps).font = {
                    size: 12,
                    bold: true,
                };
                worksheet.getCell("B" + temps).alignment = {
                    vertical: "middle",
                    horizontal: "center",
                    wraptext: true,
                };



                worksheet.mergeCells("C" + temps);
                worksheet.getCell("C" + temps).value = UPIamount[j];
                worksheet.getCell("C" + temps).font = {
                    size: 12,
                    bold: true,
                };
                worksheet.getCell("C" + temps).alignment = {
                    vertical: "middle",
                    horizontal: "center",
                    wraptext: true,
                };




                worksheet.mergeCells("D" + temps);
                worksheet.getCell("D" + temps).value = Tamount[j];
                worksheet.getCell("D" + temps).font = {
                    size: 12,
                    bold: true,
                };
                worksheet.getCell("D" + temps).alignment = {
                    vertical: "middle",
                    horizontal: "center",
                    wraptext: true,
                };

                worksheet.mergeCells("E" + temps);
                worksheet.getCell("E" + temps).value = ExpenTamount[j];
                worksheet.getCell("E" + temps).font = {
                    size: 12,
                    bold: true,
                };
                worksheet.getCell("E" + temps).alignment = {
                    vertical: "middle",
                    horizontal: "center",
                    wraptext: true,
                };


                worksheet.mergeCells("F" + temps);
                worksheet.getCell("F" + temps).value = FinalTamount[j];
                worksheet.getCell("F" + temps).font = {
                    size: 12,
                    bold: true,
                };
                worksheet.getCell("F" + temps).alignment = {
                    vertical: "middle",
                    horizontal: "center",
                    wraptext: true,
                };

                // // ****************Total***************************


                // }


            }


            // ****************************************************

            for (let j = 0; j < Auditfindall.length; j++) {

                let temp = j + 2;

                worksheet.mergeCells("A" + temp);
                worksheet.getCell("A" + temp).value = j + 1;
                worksheet.getCell("A" + temp).font = {
                    size: 12,
                    bold: true,
                };
                worksheet.getCell("A" + temp).alignment = {
                    vertical: "middle",
                    horizontal: "center",
                    wraptext: true,
                };

                worksheet.mergeCells("B" + temp);
                worksheet.getCell("B" + temp).value =
                    Auditfindall[j].date ? Auditfindall[j].date : '';
                worksheet.getCell("B" + temp).font = {
                    size: 12,
                    bold: true,
                };
                worksheet.getCell("B" + temp).alignment = {
                    vertical: "middle",
                    horizontal: "center",
                    wraptext: true,
                };

                worksheet.mergeCells("C" + temp);
                worksheet.getCell("C" + temp).value =
                    Auditfindall[j].veichalmodel;
                worksheet.getCell("C" + temp).font = {
                    size: 12,
                    bold: true,
                };
                worksheet.getCell("C" + temp).alignment = {
                    vertical: "middle",
                    horizontal: "center",
                    wraptext: true,
                };

                worksheet.mergeCells("D" + temp);
                worksheet.getCell("D" + temp).value =
                    Auditfindall[j].regno;
                worksheet.getCell("D" + temp).font = {
                    size: 12,
                    bold: true,
                };
                worksheet.getCell("D" + temp).alignment = {
                    vertical: "middle",
                    horizontal: "center",
                    wraptext: true,
                };

                worksheet.mergeCells("E" + temp);
                worksheet.getCell("E" + temp).value =
                    Auditfindall[j].totalamount;
                worksheet.getCell("E" + temp).font = {
                    size: 12,
                    bold: true,
                };
                worksheet.getCell("E" + temp).alignment = {
                    vertical: "middle",
                    horizontal: "center",
                    wraptext: true,
                };

                worksheet.mergeCells("F" + temp);
                worksheet.getCell("F" + temp).value =
                    Auditfindall[j].payment;
                worksheet.getCell("F" + temp).font = {
                    size: 12,
                    bold: true,
                };
                worksheet.getCell("F" + temp).alignment = {
                    vertical: "middle",
                    horizontal: "center",
                    wraptext: true,
                };
            }

            for (let j = 0; j < expensesfindall.length; j++) {
                let temp = j + 2;
                worksheet.mergeCells("G" + temp);
                worksheet.getCell("G" + temp).value =
                    expensesfindall[j].expensesdate;
                worksheet.getCell("G" + temp).font = {
                    size: 12,
                    bold: true,
                };
                worksheet.getCell("G" + temp).alignment = {
                    vertical: "middle",
                    horizontal: "center",
                    wraptext: true,
                };

                worksheet.mergeCells("H" + temp);
                worksheet.getCell("H" + temp).value =
                    expensesfindall[j].expensesname;
                worksheet.getCell("H" + temp).font = {
                    size: 12,
                    bold: true,
                };
                worksheet.getCell("H" + temp).alignment = {
                    vertical: "middle",
                    horizontal: "center",
                    wraptext: true,
                };

                worksheet.mergeCells("I" + temp);
                worksheet.getCell("I" + temp).value =
                    expensesfindall[j].expensesamount;
                worksheet.getCell("I" + temp).font = {
                    size: 12,
                    bold: true,
                };
                worksheet.getCell("I" + temp).alignment = {
                    vertical: "middle",
                    horizontal: "center",
                    wraptext: true,
                };
            }
            for (let j = 0; j < salaryfindall.length; j++) {
                let temp = j + 2;
                worksheet.mergeCells("J" + temp);
                worksheet.getCell("J" + temp).value =
                    salaryfindall[j].employeslarydate;
                worksheet.getCell("J" + temp).font = {
                    size: 12,
                    bold: true,
                };
                worksheet.getCell("J" + temp).alignment = {
                    vertical: "middle",
                    horizontal: "center",
                    wraptext: true,
                };

                worksheet.mergeCells("K" + temp);
                worksheet.getCell("K" + temp).value =
                    salaryfindall[j].employename;
                worksheet.getCell("K" + temp).font = {
                    size: 12,
                    bold: true,
                };
                worksheet.getCell("K" + temp).alignment = {
                    vertical: "middle",
                    horizontal: "center",
                    wraptext: true,
                };

                worksheet.mergeCells("L" + temp);
                worksheet.getCell("L" + temp).value =
                    salaryfindall[j].employesalary;
                worksheet.getCell("L" + temp).font = {
                    size: 12,
                    bold: true,
                };
                worksheet.getCell("L" + temp).alignment = {
                    vertical: "middle",
                    horizontal: "center",
                    wraptext: true,
                };
            }

        }
        return workbook.xlsx.write(response).then(function () {
            response["status"](200).end();
        });

    }
}