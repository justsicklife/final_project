package kr.co.greenart.movie.controller;

import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Random;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import kr.co.greenart.filmo.controller.FilmoController;
import kr.co.greenart.filmo.model.dto.Filmo;
import kr.co.greenart.movie.model.dto.Movie;
import kr.co.greenart.movie.model.service.MovieServiceImpl;

@Controller
@RequestMapping("/movie")
public class MovieController {

	public static final String UPLOAD_PATH = "C:\\Users\\user\\git\\final_project\\project\\src\\main\\webapp\\resources\\uploads\\";
	
	@Autowired
	MovieServiceImpl movieService;

	@Autowired 
	FilmoController filmoController;
	
	@GetMapping("/test.do")
	public String home() {
		
		return "movie/register";
	}
	
	@PostMapping("/add.do")
	public String MovieAdd(MultipartFile upload, Movie m,@RequestParam(value="genre", defaultValue="") String[] arr,@RequestParam(value="id", defaultValue="") int[] numberList) {
		
		m.setMovie_poster("aaa");
		
		if (!upload.isEmpty()) {
			
			String originalName = upload.getOriginalFilename();
		
			String extension = originalName.substring(originalName.lastIndexOf("."));
			
			LocalDateTime now = LocalDateTime.now();
			
			DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyMMddHHmmss");
			String output = now.format(formatter);
			
			int length = 8;
			String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!@#$%^&*";
			
			Random random = new Random();
			String randomString = random.ints(length,0,characters.length())
					.mapToObj(characters::charAt)
					.map(Object::toString)
					.collect(Collectors.joining());
			
			String fileName = (output + "_" + randomString + extension);
			String filePathName = UPLOAD_PATH + fileName;
			
			Path filePath = Paths.get(filePathName);
			
			m.setMovie_upload_path(UPLOAD_PATH);
			m.setMovie_upload_name(originalName);
			m.setMovie_upload_origin_name(fileName);
			
			System.out.println(m);
			
			try {
				upload.transferTo(filePath);
			} catch(IllegalStateException e) {
				e.printStackTrace();
			} catch(IOException e) {
				e.printStackTrace();
			}
		}
		
		
		int result = movieService.insertMovie(m);
		
		
		int id = movieService.selectMovieId(m);		
		System.out.println(id);

		for(int i = 0 ; i <  numberList.length ; i++) {
			Filmo f= new Filmo(0, id,numberList[i]);
			filmoController.insertFilmo(f);
		}
		
		return "redirect:/movie/test.do";
	}
}
