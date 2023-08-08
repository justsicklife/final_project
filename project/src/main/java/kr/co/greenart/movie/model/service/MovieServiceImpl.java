package kr.co.greenart.movie.model.service;

import java.util.List;

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

	public Movie selectMovieById(int movie_index) {
		return movieDao.selectMovieById(sqlSession,movie_index);
	}

	public List<Movie> selectMovieByName(String movie_title) {
		return movieDao.selectMovieByName(sqlSession,movie_title);
	}
}
