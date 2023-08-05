package kr.co.greenart.staff.model.service;

import java.util.List;

import kr.co.greenart.staff.model.dto.Staff;

public interface StaffService {

	 int insertStaff(Staff s);
	 	 
	 public  List<Staff> selectStaffAll();
}
