import { Role001mb } from "src/entity/Role001mb";
import { BaseDTO } from "./Base.dto";

export class RoleDTO extends BaseDTO {
	id: number;
	rolename: string;
	insertUser: string;
	insertDatetime: Date;
	updatedUser: string | null;
	updatedDatetime: Date | null;

	setProperties(role001mb: Role001mb) {
		this.id = role001mb.id;
		this.rolename = role001mb.rolename;
	}
}
