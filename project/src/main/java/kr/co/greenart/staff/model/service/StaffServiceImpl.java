package kr.co.greenart.staff.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.greenart.staff.model.dao.StaffDao;
import kr.co.greenart.staff.model.dto.Staff;

@Service
public class StaffServiceImpl implements StaffService{

	@Autowired
	StaffDao staffDao;
	@Autowired
	SqlSessionTemplate sqlSession;
	
	
	@Override
	public int insertStaff(Staff s) {
		return staffDao.insertStaff(sqlSession,s);
	}


	public List<Staff> selectStaff() {
		return staffDao.selectStaff(sqlSession);
	}
}
