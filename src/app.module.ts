import { Module } from '@nestjs/common';
import { ConfigModule, ConfigService } from '@nestjs/config';
import { TypeOrmModule, TypeOrmModuleOptions } from '@nestjs/typeorm';
import { SnakeNamingStrategy } from 'typeorm-naming-strategies';
import { AuthModule } from './auth/auth.module';
import { PersonModule } from './module/person.module';
import { RoleModule } from './module/role.module';
import { UserModule } from './module/user.module';
import { EmployeeModule } from './module/Employee.module';
import { ExceldownloadModule } from './module/Exceldownload.module';
import { SalaryModule } from './module/Salary.module';
import { WorkmethodModule } from './module/Workmethod.module';
import { BillModule } from './module/bill.module';
import { ExpensesModule } from './module/expenses.module';
import { PaymentModule } from './module/paymet.module';


@Module({
    imports: [
        ConfigModule.forRoot({
            isGlobal: true,
            expandVariables: true,
            envFilePath: ['.env.configuration.dev'],
        }),
        TypeOrmModule.forRootAsync({
            imports: [ConfigModule],
            inject: [ConfigService],
            useFactory: async (configService: ConfigService) =>
            ({
                type: 'mysql',
                synchronize: false,
                host: configService.get<string>('DATABASE_HOST'),
                port: Number(configService.get<string>('DATABASE_PORT')),
                username: configService.get<string>('DATABASE_USER_NAME'),
                password: configService.get<string>('DATABASE_PASSWORD'),
                database: configService.get<string>('DATABASE_NAME'),
                autoLoadEntities: true,
                entities: ['../dist/entity/*.entity.{ts,js}'],
                subscribers: ['../dist/entity/*.entity.{ts,js}'],
                migrations: ['../dist/entity/*.entity.{ts,js}'],
                namingStrategy: new SnakeNamingStrategy(),
            } as TypeOrmModuleOptions),
        }),
        AuthModule,
        RoleModule,
        UserModule,
        PersonModule,
        BillModule,
        PaymentModule,
        AuthModule,
        EmployeeModule,
        SalaryModule,
        WorkmethodModule,
        ExpensesModule,
        ExceldownloadModule,
       

    ]
})

export class AppModule { }