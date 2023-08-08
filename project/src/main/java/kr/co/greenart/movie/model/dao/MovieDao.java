package kr.co.greenart.movie.model.dao;

import java.util.List;

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

	public Movie selectMovieById(SqlSessionTemplate sqlSession, int movie_index) {
		return sqlSession.selectOne("movieMapper.selectMovieById",movie_index);
	}

	public List<Movie> selectMovieByName(SqlSessionTemplate sqlSession, String movie_title) {
		return sqlSession.selectList("movieMapper.selectMovieByName",movie_title);
	}
}
