package kr.co.greenart.movie.model.service;

import kr.co.greenart.movie.model.dto.Movie;

public interface MovieService {

	int insertMovie(Movie m);

	int selectMovieId(Movie m) ;
}
