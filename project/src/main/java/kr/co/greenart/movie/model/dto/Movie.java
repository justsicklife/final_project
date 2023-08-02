package kr.co.greenart.movie.model.dto;

import java.security.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Movie {
	int  movie_index;
	String movie_title;
	String movie_director;
	String movie_summary;
	String movie_poster;
	String movie_open_date;
	
	String movie_upload_path;
	String movie_upload_name;
	String movie_upload_origin_name;
	
}
