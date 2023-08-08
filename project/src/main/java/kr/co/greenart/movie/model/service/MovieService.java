package kr.co.greenart.movie.model.service;

import java.util.List;

import kr.co.greenart.movie.model.dto.Movie;

public interface MovieService {

	int insertMovie(Movie m);

	int selectMovieId(Movie m) ;
	
	public Movie selectMovieById(int movie_index);
	
	List<Movie> selectMovieByName(String movie_title);
}
