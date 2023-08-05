package kr.co.greenart.filmo.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.greenart.filmo.model.dao.FilmoDao;
import kr.co.greenart.filmo.model.dto.Filmo;

@Service
public class FilmoServiceImpl implements FilmoService{

	@Autowired
	FilmoDao filmoDao;
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public int insertFilmo(Filmo f) {
		return filmoDao.insertFilmo(sqlSession,f);
	}
	
}

