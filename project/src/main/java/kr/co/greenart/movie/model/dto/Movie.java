package kr.co.greenart.movie.model.dto;

import java.security.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Movie {
	int  movie_index;
	String movie_title;
	String movie_director;
	String movie_summary;
	String movie_poster;
	String movie_open_date;
	@Override
	public String toString() {
		return "Movie [movie_index=" + movie_index + ", movie_title=" + movie_title + ", movie_director="
				+ movie_director + ", movie_summary=" + movie_summary + ", movie_poster=" + movie_poster
				+ ", movie_open_date=" + movie_open_date + "]";
	}
	
	
}
