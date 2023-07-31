package kr.co.greenart.movie.controller;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.greenart.filmo.controller.FilmoController;
import kr.co.greenart.filmo.model.dto.Filmo;
import kr.co.greenart.movie.model.dto.Movie;
import kr.co.greenart.movie.model.service.MovieService;
import kr.co.greenart.movie.model.service.MovieServiceImpl;

@Controller
@RequestMapping("/movie")
public class MovieController {
	
	@Autowired
	MovieServiceImpl movieService;

	@Autowired 
	FilmoController filmoController;
	
	@GetMapping("/test.do")
	public String home() {
		
		return "movie/register";
	}
	
	@PostMapping("/add.do")
	public String MovieAdd(Movie m,@RequestParam(value="genre", defaultValue="") String[] arr,@RequestParam(value="id", defaultValue="") int[] numberList) {
		
		// 0. insert 한곳에서 영화index를 가져와야 되는데 어떻게 가져올까?
		int result = movieService.insertMovie(m);
		
		int id = movieService.selectMovieId(m);
		// 위에 insertMovie 성공했을 때
		// 제목+감독 
		// index기준으로 정렬 가져와서 컨트롤러가 가지고있는 제목+감독, SELECT index로 가져온 제목+감독 일치하는지
		
		System.out.println(id);
		
		// SELECT movie_index, movide_title, movide_director FROM MOIVE ORDER BY movie_index DESC; // 1개만
		// index 가장 높은거 가져옴 => 최근에 들어간 데이터
		// 가져온 최근에 들어간 데이터랑 = 컨트롤러가 가지고있는 데이터랑 일치하는지 확인
		// movie_index

		// 1. filmo dao,dto,controller 를 추가해야하나?
		for(int i = 0 ; i <  numberList.length ; i++) {
			Filmo f= new Filmo(0, id,numberList[i]);
			filmoController.insertFilmo(f);
		}
		
		return "redirect:/movie/test.do";
	}
}
