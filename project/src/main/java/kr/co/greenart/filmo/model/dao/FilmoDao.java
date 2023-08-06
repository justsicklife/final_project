package kr.co.greenart.filmo.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.greenart.filmo.model.dto.Filmo;

@Repository
public class FilmoDao {

	public int insertFilmo(SqlSessionTemplate sqlSession, Filmo f) {
		return sqlSession.insert("filmoMapper.insertFilmo",f);
	}

	public List<Filmo> selectFilmoByStaffId(SqlSessionTemplate sqlSession, int staff_index) {
		return sqlSession.selectList("filmoMapper.selectFilmoByStaffId",staff_index);
	}

}
