package kr.co.greenart.staff.model.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Staff {
	int staff_index;
	String staff_name;
	String staff_sex;
	int staff_age;
	String staff_role;
	String staff_upload_path;
	String staff_upload_name;
	String staff_upload_origin_name;
}
