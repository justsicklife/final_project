package kr.co.greenart.filmo.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.greenart.filmo.model.dto.Filmo;

@Repository
public class FilmoDao {

	public int insertFilmo(SqlSessionTemplate sqlSession, Filmo f) {
		return sqlSession.insert("filmoMapper.insertFilmo",f);
	}

}
