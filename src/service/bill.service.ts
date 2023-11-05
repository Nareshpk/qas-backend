import { Injectable, Req, Res } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";


import { Repository, getManager } from "typeorm";
import { BillDTO } from "src/dto/Bill.dto";
import { Bill001mb } from "src/entity/Bill001mb";
import { Payment001wb } from "src/entity/Payment001wb";
import { Response } from "express";
import { createReadStream } from "fs";
import { Request } from "supertest";
import { format } from "date-fns";
var path = require("path");
var converter = require("number-to-words");
const moment = require("moment");
@Injectable()
export class BillService {
    constructor(
        @InjectRepository(Bill001mb) private readonly billRepository: Repository<Bill001mb>,
        @InjectRepository(Payment001wb) private readonly paymentRepository: Repository<Payment001wb>,
    ) {
    }

    async create(billDTO: BillDTO): Promise<Bill001mb> {
        let payment001wbs: Payment001wb[] = [];
        for (let i = 0; i < billDTO.payment001wbs.length; i++) {
            const payment001wb = new Payment001wb();

            // payment001wb.bslno2 = payment001wbs[i].bslno2;
            payment001wb.workmethod = billDTO.payment001wbs[i].workmethod;
            payment001wb.amount = billDTO.payment001wbs[i].amount;
            let orderitem = await this.paymentRepository.save(
                payment001wb
            );
            payment001wbs.push(orderitem);
        }

        if (payment001wbs.length > 0) {
            const bill001mb = new Bill001mb();
            bill001mb.setProperties(billDTO);
            bill001mb.payment001wbs = payment001wbs;
            await this.billRepository.save(bill001mb);
            return bill001mb;
        }
    }

    async update(billDTO: BillDTO): Promise<Bill001mb> {

        for (let i = 0; i < billDTO.payment001wbs.length; i++) {
            const payment001wb = new Payment001wb();
            payment001wb.workmethod = billDTO.payment001wbs[i].workmethod;
            payment001wb.amount = Number(billDTO.payment001wbs[i].amount);
            await this.paymentRepository.update({ slNo: billDTO.payment001wbs[i].slNo }, payment001wb);
        }
        const bill001mb = new Bill001mb();
        bill001mb.setProperties(billDTO);
        await this.billRepository.update({ slNo: bill001mb.slNo }, bill001mb);
        return bill001mb;
    }

    async getCount(): Promise<string> {
        const entityManager = getManager();
        let result = await getManager().query(
            "select count(*) as row from Bill001mb",
            ["row"]
        );
        var string = JSON.stringify(result);
        return string;
    }

    async findAll(bslno2: any): Promise<Bill001mb[]> {
        return await this.billRepository.find({
            relations: ["payment001wbs"],
            order: { slNo: "DESC" },
        });
    }


    findOne(slNo: number): Promise<Bill001mb> {
        return this.billRepository.findOne(slNo);
    }

    async remove(id: string): Promise<void> {
        await this.billRepository.delete(id);
    }

    async downloadInvoicePdf(id: any, selecdays: any, response: Response) {
        console.log("id", id, selecdays);

        if (id && selecdays == "Day") {
            let purchaslip = await this.billRepository.find({
                relations: [
                    "payment001wbs",
                ],
            });
            let WeekData: Bill001mb[] = []
            let today = moment(new Date(id)).format("YYYY-MM-DD");
            for (let i = 0; i < purchaslip.length; i++) {
                let weekdate = moment(purchaslip[i].date).format("YYYY-MM-DD");
                if (today === weekdate) {
                    WeekData.push(purchaslip[i])
                }
            }
            let setImages
            const imagePath = 'proj.jpeg';
            fs.readFile(imagePath, (err, data) => {
                if (err) {
                  console.error('Error reading the image file:', err);
                } else {
                  // Encode the image data to base64
                  const base64Image = Buffer.from(data).toString('base64');
                  
                  // Print or use the base64 string as needed
                  console.log('Base64 Image:', base64Image);
                }
              });

            var fs = require("fs");
            var pdf = require("dynamic-html-pdf");
            var html = fs.readFileSync("preplan.html", "utf8");

            let orderitemSlno = 0;
            var options = {
                format: "A4",
                orientation: "portrait",
                border: "10mm",
            };

            var document = {
                type: "file", // 'file' or 'buffer'
                template: html,
                context: {
                    purcheck: WeekData,
                },
                path: "./pdf/purchaslip.pdf", // it is not required if type is buffer
            };

            if (document === null) {
                return null;
            } else {
                pdf.create(document, options)
                    .then(res => {
                        var filestream = fs.createReadStream(res.filename);
                        response.writeHead(200, {
                            "Content-Disposition": "output.pdf",
                            'Content-Type': 'application/pdf'
                        });
                        filestream.pipe(response);
                    })
                    .catch(error => {
                        console.error(error)
                    });
            }
        }

        if (id && selecdays == "Week") {

            let purchaslip = await this.billRepository.find({
                relations: [
                    "payment001wbs",
                ],
            });
            const { startOfWeek, endOfWeek } = require('date-fns');
            var fs = require("fs");
            var pdf = require("dynamic-html-pdf");
            var html = fs.readFileSync("preplan.html", "utf8");
            let WeekData: Bill001mb[] = []
            let days = [];

            const startDate = startOfWeek(new Date(id), { weekStartsOn: 0 });
            const endDate = endOfWeek(new Date(id), { weekStartsOn: 0 });
            let weekfday = moment(startDate).format("YYYY-MM-DD");
            let weeklday = moment(endDate).format("YYYY-MM-DD");

            for (let i = 0; i < purchaslip.length; i++) {
                let weekdate = moment(purchaslip[i].date).format("YYYY-MM-DD");
                if (weekfday <= weekdate && weeklday >= weekdate) {
                    WeekData.push(purchaslip[i])
                }
            }

            var options = {
                format: "A4",
                orientation: "portrait",
                border: "10mm",
            };

            var document = {
                type: "file", // 'file' or 'buffer'
                template: html,
                context: {
                    purcheck: WeekData,
                },
                path: "./pdf/purchaslip.pdf", // it is not required if type is buffer
            };

            if (document === null) {
                return null;
            } else {
                pdf.create(document, options)
                    .then(res => {
                        var filestream = fs.createReadStream(res.filename);
                        response.writeHead(200, {
                            "Content-Disposition": "output.pdf",
                            'Content-Type': 'application/pdf'
                        });
                        filestream.pipe(response);
                    })
                    .catch(error => {
                        console.error(error)
                    });
            }
        }

        if (id && selecdays == "Month") {
            let purchaslip = await this.billRepository.find({
                relations: [
                    "payment001wbs",
                ],
            });
            const { startOfMonth, endOfMonth } = require('date-fns');
            var fs = require("fs");
            var pdf = require("dynamic-html-pdf");
            var html = fs.readFileSync("preplan.html", "utf8");
            let WeekData: Bill001mb[] = []
            let days = [];
            const weekdays = new Date(id);
            const startDate = startOfMonth(new Date(id));
            const endDate = endOfMonth(new Date(id));
            let weekfday = moment(startDate).format("YYYY-MM-DD");
            let weeklday = moment(endDate).format("YYYY-MM-DD");

            console.log("Start of the week:", weekfday);
            console.log("End of the week:", weeklday);

            for (let i = 0; i < purchaslip.length; i++) {
                let weekdate = moment(purchaslip[i].date).format("YYYY-MM-DD");
                if (weekfday <= weekdate && weeklday >= weekdate) {
                    WeekData.push(purchaslip[i])
                }
            }

            var options = {
                format: "A4",
                orientation: "portrait",
                border: "10mm",
            };

            var document = {
                type: "file", // 'file' or 'buffer'
                template: html,
                context: {
                    purcheck: WeekData,
                },
                path: "./pdf/purchaslip.pdf", // it is not required if type is buffer
            };

            if (document === null) {
                return null;
            } else {
                pdf.create(document, options)
                    .then(res => {
                        var filestream = fs.createReadStream(res.filename);
                        response.writeHead(200, {
                            "Content-Disposition": "output.pdf",
                            'Content-Type': 'application/pdf'
                        });
                        filestream.pipe(response);
                    })
                    .catch(error => {
                        console.error(error)
                    });
            }
        }


    }

    async downloadPaymentPdf(id: any, testday: any, paymentlist: any, response: Response) {


        if (id && testday == "Day") {
            let purchaslip = await this.billRepository.find({
                where: { date: id, payment: paymentlist },
                relations: [
                    "payment001wbs",
                ],
            });
            let WeekData: Bill001mb[] = []
            var fs = require("fs");
            var pdf = require("dynamic-html-pdf");
            var html = fs.readFileSync("preCheck.html", "utf8");
            let orderitemSlno = 0;



            let purchasereqslipitems = [];
            for (let i = 0; i < purchaslip.length; i++) {
                WeekData.push(purchaslip[i]);
            }

            let whateramount = 0
            let Interior = 0
            let Painting = 0
            let Others = 0
            let Teflon = 0
            for (let i = 0; i < WeekData.length; i++) {
                for (let j = 0; j < WeekData[i].payment001wbs.length; j++) {
                    if (WeekData[i].payment001wbs[j].workmethod == 'Water Wash') {
                        purchasereqslipitems.push(WeekData[i].payment001wbs[j])
                        whateramount = whateramount + WeekData[i].payment001wbs[j].amount ? WeekData[i].payment001wbs[j].amount : 0;
                    }
                    if (WeekData[i].payment001wbs[j].workmethod == 'Interior cleaning') {
                        Interior = Interior + WeekData[i].payment001wbs[j].amount ? WeekData[i].payment001wbs[j].amount : 0;
                    }
                    if (WeekData[i].payment001wbs[j].workmethod == 'Teflon Cleaning') {
                        Teflon = Teflon + WeekData[i].payment001wbs[j].amount ? WeekData[i].payment001wbs[j].amount : 0;
                    }
                    if (WeekData[i].payment001wbs[j].workmethod == 'Painting') {
                        Painting = Painting + WeekData[i].payment001wbs[j].amount ? WeekData[i].payment001wbs[j].amount : 0;
                    }
                    if (WeekData[i].payment001wbs[j].workmethod == 'Others') {
                        Others = Others + WeekData[i].payment001wbs[j].amount ? WeekData[i].payment001wbs[j].amount : 0;
                    }
                }
            }
            let toallsamounts = [{
                "whate": whateramount,
                "Interior": Interior,
                "Painting": Painting,
                "Others": Others,
                "Teflon": Teflon
            }];
            let Tamount = whateramount + Interior + Painting + Others + Teflon;
            let overallamount = [{
                "allamount": Tamount
            }];


            var options = {
                format: "A4",
                orientation: "portrait",
                border: "10mm",
            };

            var document = {
                type: "file", // 'file' or 'buffer'
                template: html,
                context: {
                    purcheck: WeekData,
                    Purchasereqslipitems: purchasereqslipitems,
                    Toallsamounts: toallsamounts,
                    Overallamount: overallamount
                },
                path: "./pdf/purchaslip.pdf", // it is not required if type is buffer
            };

            if (document === null) {
                return null;
            } else {
                pdf.create(document, options)
                    .then(res => {
                        var filestream = fs.createReadStream(res.filename);
                        response.writeHead(200, {
                            "Content-Disposition": "output.pdf",
                            'Content-Type': 'application/pdf'
                        });
                        filestream.pipe(response);
                    })
                    .catch(error => {
                        console.error(error)
                    });
            }

        }

        if (id && testday == 'Week') {


            let purchaslip = await this.billRepository.find({
                where: { payment: paymentlist },
                relations: [
                    "payment001wbs",
                ],
            });
            var fs = require("fs");
            var pdf = require("dynamic-html-pdf");
            var html = fs.readFileSync("preCheck.html", "utf8");
            let orderitemSlno = 0;

            // const dates = require('date-and-time')
            let WeekData: Bill001mb[] = []
            let days = [];
            const weekdays = new Date(id);
            var dayOfWeek = 6;
            var date = new Date(weekdays);
            var diff = date.getDay() - dayOfWeek;
            if (diff <= 0) {
                let date = (-1) * diff
                for (let i = 0; i < date; i++) {
                    days.push(
                        moment(id)
                            .add(i, "days")
                            .format("DD-MM-YYYY")
                    );
                }
            }


            let purchasereqslipitems = [];
            for (let i = 0; i < purchaslip.length; i++) {
                for (let j = 0; j < days.length; j++) {
                    if (purchaslip[i].date === days[j]) {
                        WeekData.push(purchaslip[i]);
                    }
                }
            }
            let whateramount = 0
            let Interior = 0
            let Painting = 0
            let Others = 0
            let Teflon = 0
            for (let i = 0; i < WeekData.length; i++) {
                for (let j = 0; j < WeekData[i].payment001wbs.length; j++) {
                    if (WeekData[i].payment001wbs[j].workmethod == 'Water Wash') {
                        purchasereqslipitems.push(WeekData[i].payment001wbs[j])
                        whateramount = whateramount + WeekData[i].payment001wbs[j].amount
                    }
                    if (WeekData[i].payment001wbs[j].workmethod == 'Interior cleaning') {
                        Interior = Interior + WeekData[i].payment001wbs[j].amount
                    }
                    if (WeekData[i].payment001wbs[j].workmethod == 'Teflon Cleaning') {
                        Teflon = Teflon + WeekData[i].payment001wbs[j].amount
                    }
                    if (WeekData[i].payment001wbs[j].workmethod == 'Painting') {
                        Painting = Painting + WeekData[i].payment001wbs[j].amount
                    }
                    if (WeekData[i].payment001wbs[j].workmethod == 'Others') {
                        Others = Others + WeekData[i].payment001wbs[j].amount
                    }
                }
            }
            let toallsamounts = [{
                "whate": whateramount,
                "Interior": Interior,
                "Painting": Painting,
                "Others": Others,
                "Teflon": Teflon
            }];
            let Tamount = whateramount + Interior + Painting + Others + Teflon;
            let overallamount = [{
                "allamount": Tamount
            }];

            var options = {
                format: "A3",
                orientation: "landscape",
                border: "10mm",
            };

            var document = {
                type: "file", // 'file' or 'buffer'
                template: html,
                context: {
                    purcheck: WeekData,
                    Purchasereqslipitems: purchasereqslipitems,
                    Toallsamounts: toallsamounts,
                    Overallamount: overallamount
                },
                path: "./pdf/purchaseOreders.pdf", // it is not required if type is buffer
            };

            if (document === null) {
                return null;
            } else {
                pdf.create(document, options)
                    .then(res => {
                        var filestream = fs.createReadStream(res.filename);
                        response.writeHead(200, {
                            "Content-Disposition": "output.pdf",
                            'Content-Type': 'application/pdf'
                        });
                        filestream.pipe(response);
                    })
                    .catch(error => {
                        console.error(error)
                    });
            }

        }

        if (id && testday == 'Month') {


            let purchaslip = await this.billRepository.find({
                where: { payment: paymentlist },
                relations: [
                    "payment001wbs",
                ],
            });
            var fs = require("fs");
            var pdf = require("dynamic-html-pdf");
            var html = fs.readFileSync("preCheck.html", "utf8");
            let orderitemSlno = 0;

            // const dates = require('date-and-time')
            let WeekData: Bill001mb[] = []
            let days = [];
            const weekdays = new Date(id);
            var dayOfWeek = 31;
            var date = new Date(weekdays);
            var diff = date.getDate() - dayOfWeek;
            if (diff <= 0) {
                let date = (-1) * diff
                for (let i = 0; i < date; i++) {
                    days.push(
                        moment(id)
                            .add(i, "days")
                            .format("DD-MM-YYYY")
                    );
                }
            }

            let purchasereqslipitems = [];
            for (let i = 0; i < purchaslip.length; i++) {
                for (let j = 0; j < days.length; j++) {
                    if (purchaslip[i].date === days[j]) {
                        WeekData.push(purchaslip[i]);
                    }
                }
            }
            let whateramount = 0
            let Interior = 0
            let Painting = 0
            let Others = 0
            let Teflon = 0
            for (let i = 0; i < WeekData.length; i++) {
                for (let j = 0; j < WeekData[i].payment001wbs.length; j++) {
                    if (WeekData[i].payment001wbs[j].workmethod == 'Water Wash') {
                        purchasereqslipitems.push(WeekData[i].payment001wbs[j])
                        whateramount = whateramount + WeekData[i].payment001wbs[j].amount
                    }
                    if (WeekData[i].payment001wbs[j].workmethod == 'Interior cleaning') {
                        Interior = Interior + WeekData[i].payment001wbs[j].amount
                    }
                    if (WeekData[i].payment001wbs[j].workmethod == 'Teflon Cleaning') {
                        Teflon = Teflon + WeekData[i].payment001wbs[j].amount
                    }
                    if (WeekData[i].payment001wbs[j].workmethod == 'Painting') {
                        Painting = Painting + WeekData[i].payment001wbs[j].amount
                    }
                    if (WeekData[i].payment001wbs[j].workmethod == 'Others') {
                        Others = Others + WeekData[i].payment001wbs[j].amount
                    }
                }
            }
            let toallsamounts = [{
                "whate": whateramount,
                "Interior": Interior,
                "Painting": Painting,
                "Others": Others,
                "Teflon": Teflon
            }];
            let Tamount = whateramount + Interior + Painting + Others + Teflon;
            let overallamount = [{
                "allamount": Tamount
            }];

            var options = {
                format: "A3",
                orientation: "landscape",
                border: "10mm",
            };

            var document = {
                type: "file", // 'file' or 'buffer'
                template: html,
                context: {
                    purcheck: WeekData,
                    Purchasereqslipitems: purchasereqslipitems,
                    Toallsamounts: toallsamounts,
                    Overallamount: overallamount
                },
                path: "./pdf/purchaseOreders.pdf", // it is not required if type is buffer
            };

            if (document === null) {
                return null;
            } else {
                pdf.create(document, options)
                    .then(res => {
                        var filestream = fs.createReadStream(res.filename);
                        response.writeHead(200, {
                            "Content-Disposition": "output.pdf",
                            'Content-Type': 'application/pdf'
                        });
                        filestream.pipe(response);
                    })
                    .catch(error => {
                        console.error(error)
                    });
            }

        }

    }
    async downloadDatePdf(id: any, selectDays: any, response: Response) {
        if (id && selectDays === "Day") {
            let purchaslip = await this.billRepository.find({
                where: { date: id },
                relations: [
                    "payment001wbs",
                ],
            });

            let WeekData: Bill001mb[] = []
            var fs = require("fs");
            var pdf = require("dynamic-html-pdf");
            var html = fs.readFileSync("detailsday.html", "utf8");
            let orderitemSlno = 0;


            let purchasereqslipitems = [];
            for (let i = 0; i < purchaslip.length; i++) {
                WeekData.push(purchaslip[i]);
            }

            let whateramount = 0
            let Interior = 0
            let Painting = 0
            let Others = 0
            let Teflon = 0
            for (let i = 0; i < WeekData.length; i++) {
                for (let j = 0; j < WeekData[i].payment001wbs.length; j++) {
                    if (WeekData[i].payment001wbs[j].workmethod == 'Water Wash') {
                        purchasereqslipitems.push(WeekData[i].payment001wbs[j])
                        whateramount = whateramount + WeekData[i].payment001wbs[j].amount ? WeekData[i].payment001wbs[j].amount : 0;
                    }
                    if (WeekData[i].payment001wbs[j].workmethod == 'Interior cleaning') {
                        Interior = Interior + WeekData[i].payment001wbs[j].amount ? WeekData[i].payment001wbs[j].amount : 0;
                    }
                    if (WeekData[i].payment001wbs[j].workmethod == 'Teflon Cleaning') {
                        Teflon = Teflon + WeekData[i].payment001wbs[j].amount ? WeekData[i].payment001wbs[j].amount : 0;
                    }
                    if (WeekData[i].payment001wbs[j].workmethod == 'Painting') {
                        Painting = Painting + WeekData[i].payment001wbs[j].amount ? WeekData[i].payment001wbs[j].amount : 0;
                    }
                    if (WeekData[i].payment001wbs[j].workmethod == 'Others') {
                        Others = Others + WeekData[i].payment001wbs[j].amount ? WeekData[i].payment001wbs[j].amount : 0;
                    }
                }
            }
            let toallsamounts = [{
                "whate": whateramount,
                "Interior": Interior,
                "Painting": Painting,
                "Others": Others,
                "Teflon": Teflon
            }];
            let Tamount = whateramount + Interior + Painting + Others + Teflon;
            let overallamount = [{
                "allamount": Tamount
            }];


            var options = {
                format: "A4",
                orientation: "portrait",
                border: "10mm",
            };

            var document = {
                type: "file", // 'file' or 'buffer'
                template: html,
                context: {
                    purcheck: WeekData,
                    Purchasereqslipitems: purchasereqslipitems,
                    Toallsamounts: toallsamounts,
                    Overallamount: overallamount
                },
                path: "./pdf/purchaslip.pdf", // it is not required if type is buffer
            };

            if (document === null) {
                return null;
            } else {
                pdf.create(document, options)
                    .then(res => {
                        var filestream = fs.createReadStream(res.filename);
                        response.writeHead(200, {
                            "Content-Disposition": "output.pdf",
                            'Content-Type': 'application/pdf'
                        });
                        filestream.pipe(response);
                    })
                    .catch(error => {
                        console.error(error)
                    });
            }
        }

        if (id && selectDays == 'Week') {


            let purchaslip = await this.billRepository.find({
                relations: [
                    "payment001wbs",
                ],
            });
            var fs = require("fs");
            var pdf = require("dynamic-html-pdf");
            var html = fs.readFileSync("detailsweek.html", "utf8");
            let orderitemSlno = 0;
            // const dates = require('date-and-time')
            let WeekData: Bill001mb[] = []
            let days = [];
            const weekdays = new Date(id);
            var dayOfWeek = 6;
            var date = new Date(weekdays);
            var diff = date.getDay() - dayOfWeek;
            if (diff <= 0) {
                let date = (-1) * diff
                for (let i = 0; i < date; i++) {
                    days.push(
                        moment(id)
                            .add(i, "days")
                            .format("DD-MM-YYYY")
                    );
                }
            }

            let purchasereqslipitems = [];
            for (let i = 0; i < purchaslip.length; i++) {
                for (let j = 0; j < days.length; j++) {
                    if (purchaslip[i].date === days[j]) {
                        WeekData.push(purchaslip[i]);
                    }
                }
            }

            let whateramount = 0
            let Interior = 0
            let Painting = 0
            let Others = 0
            let Teflon = 0
            for (let i = 0; i < WeekData.length; i++) {
                for (let j = 0; j < WeekData[i].payment001wbs.length; j++) {
                    if (WeekData[i].payment001wbs[j].workmethod == 'Water Wash') {
                        purchasereqslipitems.push(WeekData[i].payment001wbs[j])
                        whateramount = whateramount + WeekData[i].payment001wbs[j].amount
                    }
                    if (WeekData[i].payment001wbs[j].workmethod == 'Interior cleaning') {
                        Interior = Interior + WeekData[i].payment001wbs[j].amount
                    }
                    if (WeekData[i].payment001wbs[j].workmethod == 'Teflon Cleaning') {
                        Teflon = Teflon + WeekData[i].payment001wbs[j].amount
                    }
                    if (WeekData[i].payment001wbs[j].workmethod == 'Painting') {
                        Painting = Painting + WeekData[i].payment001wbs[j].amount
                    }
                    if (WeekData[i].payment001wbs[j].workmethod == 'Others') {
                        Others = Others + WeekData[i].payment001wbs[j].amount
                    }
                }
            }
            let toallsamounts = [{
                "whate": whateramount,
                "Interior": Interior,
                "Painting": Painting,
                "Others": Others,
                "Teflon": Teflon
            }];
            let Tamount = whateramount + Interior + Painting + Others + Teflon;
            let overallamount = [{
                "allamount": Tamount
            }];
            // for (let i = 0; i < data.length; i++) {
            //     for (let j = 0; j < data[i].payment001wbs.length; j++) {

            //     }
            // }



            var options = {
                format: "A3",
                orientation: "landscape",
                border: "10mm",
            };

            var document = {
                type: "file", // 'file' or 'buffer'
                template: html,
                context: {
                    purcheck: WeekData,
                    Purchasereqslipitems: purchasereqslipitems,
                    Toallsamounts: toallsamounts,
                    Overallamount: overallamount
                },
                path: "./pdf/purchaseOreders.pdf", // it is not required if type is buffer
            };

            if (document === null) {
                return null;
            } else {
                pdf.create(document, options)
                    .then(res => {
                        var filestream = fs.createReadStream(res.filename);
                        response.writeHead(200, {
                            "Content-Disposition": "output.pdf",
                            'Content-Type': 'application/pdf'
                        });
                        filestream.pipe(response);
                    })
                    .catch(error => {
                        console.error(error)
                    });
            }

        }

        if (id && selectDays == 'Month') {


            let purchaslip = await this.billRepository.find({
                relations: [
                    "payment001wbs",
                ],
            });
            var fs = require("fs");
            var pdf = require("dynamic-html-pdf");
            var html = fs.readFileSync("detailsmonth.html", "utf8");
            let orderitemSlno = 0;
            // const dates = require('date-and-time')
            let WeekData: Bill001mb[] = []
            let days = [];
            const weekdays = new Date(id);
            var dayOfWeek = 31;
            var date = new Date(weekdays);
            var diff = date.getDate() - dayOfWeek;
            if (diff <= 0) {
                let date = (-1) * diff
                for (let i = 0; i < date; i++) {
                    days.push(
                        moment(id)
                            .add(i, "days")
                            .format("DD-MM-YYYY")
                    );
                }
            }

            let purchasereqslipitems = [];
            for (let i = 0; i < purchaslip.length; i++) {
                for (let j = 0; j < days.length; j++) {
                    if (purchaslip[i].date === days[j]) {
                        WeekData.push(purchaslip[i]);
                    }
                }
            }

            let whateramount = 0
            let Interior = 0
            let Painting = 0
            let Others = 0
            let Teflon = 0
            for (let i = 0; i < WeekData.length; i++) {
                for (let j = 0; j < WeekData[i].payment001wbs.length; j++) {
                    if (WeekData[i].payment001wbs[j].workmethod == 'Water Wash') {
                        purchasereqslipitems.push(WeekData[i].payment001wbs[j])
                        whateramount = whateramount + WeekData[i].payment001wbs[j].amount
                    }
                    if (WeekData[i].payment001wbs[j].workmethod == 'Interior cleaning') {
                        Interior = Interior + WeekData[i].payment001wbs[j].amount
                    }
                    if (WeekData[i].payment001wbs[j].workmethod == 'Teflon Cleaning') {
                        Teflon = Teflon + WeekData[i].payment001wbs[j].amount
                    }
                    if (WeekData[i].payment001wbs[j].workmethod == 'Painting') {
                        Painting = Painting + WeekData[i].payment001wbs[j].amount
                    }
                    if (WeekData[i].payment001wbs[j].workmethod == 'Others') {
                        Others = Others + WeekData[i].payment001wbs[j].amount
                    }
                }
            }
            let toallsamounts = [{
                "whate": whateramount,
                "Interior": Interior,
                "Painting": Painting,
                "Others": Others,
                "Teflon": Teflon
            }];
            let Tamount = whateramount + Interior + Painting + Others + Teflon;
            let overallamount = [{
                "allamount": Tamount
            }];
            // for (let i = 0; i < data.length; i++) {
            //     for (let j = 0; j < data[i].payment001wbs.length; j++) {

            //     }
            // }



            var options = {
                format: "A3",
                orientation: "landscape",
                border: "10mm",
            };

            var document = {
                type: "file", // 'file' or 'buffer'
                template: html,
                context: {
                    purcheck: WeekData,
                    Purchasereqslipitems: purchasereqslipitems,
                    Toallsamounts: toallsamounts,
                    Overallamount: overallamount
                },
                path: "./pdf/purchaseOreders.pdf", // it is not required if type is buffer
            };

            if (document === null) {
                return null;
            } else {
                pdf.create(document, options)
                    .then(res => {
                        var filestream = fs.createReadStream(res.filename);
                        response.writeHead(200, {
                            "Content-Disposition": "output.pdf",
                            'Content-Type': 'application/pdf'
                        });
                        filestream.pipe(response);
                    })
                    .catch(error => {
                        console.error(error)
                    });
            }

        }

    }

    async downloadIDPdf(id: any, response: Response) {
        let purchaslip = await this.billRepository.find({
            where: { slNo: id },
            relations: [
                "payment001wbs",
            ],
        });

        let setImages

        var fs = require("fs");
        var pdf = require("dynamic-html-pdf");
        var html = fs.readFileSync("preplan.html", "utf8");

        let orderitemSlno = 0;
        var options = {
            format: "A4",
            orientation: "portrait",
            border: "10mm",
        };

        var document = {
            type: "file", // 'file' or 'buffer'
            template: html,
            context: {
                purcheck: purchaslip,
            },
            path: "./pdf/purchaslip.pdf", // it is not required if type is buffer
        };

        if (document === null) {
            return null;
        } else {
            pdf.create(document, options)
                .then(res => {
                    var filestream = fs.createReadStream(res.filename);
                    response.writeHead(200, {
                        "Content-Disposition": "output.pdf",
                        'Content-Type': 'application/pdf'
                    });
                    filestream.pipe(response);
                })
                .catch(error => {
                    console.error(error)
                });
        }
    }
}