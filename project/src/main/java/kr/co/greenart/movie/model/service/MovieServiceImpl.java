package kr.co.greenart.movie.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.greenart.movie.model.dao.MovieDao;
import kr.co.greenart.movie.model.dto.Movie;

@Service
public class MovieServiceImpl implements MovieService {

	@Autowired
	SqlSessionTemplate sqlSession;

	@Autowired
	MovieDao movieDao;
	
	@Override
	public int insertMovie(Movie m) {
		return movieDao.insertMovie(sqlSession,m);
	}

	@Override
	public int selectMovieId(Movie m) {
		return movieDao.selectMovieId(sqlSession,m);
	}
}
