package kr.co.greenart.staff.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.greenart.staff.model.dto.Staff;

@Repository
public class StaffDao {

	public int insertStaff(SqlSessionTemplate sqlSession, Staff s) {
		return sqlSession.insert("staffMapper.insertStaff",s);
	}

	public List<Staff> staffSelectAll(SqlSessionTemplate sqlSession) {
		return sqlSession.selectList("staffMapper.selectStaffAll");
	}
}
