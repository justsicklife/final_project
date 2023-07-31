package kr.co.greenart.movie.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.greenart.movie.model.dto.Movie;

@Repository
public class MovieDao {

	public int insertMovie(SqlSessionTemplate sqlSession, Movie m) {
		return sqlSession.insert("movieMapper.insertMovie",m);
	}

	public int selectMovieId(SqlSessionTemplate sqlSession, Movie m) {
		return sqlSession.selectOne("movieMapper.selectMovieId",m);
	}
	
}
