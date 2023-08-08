package kr.co.greenart.staff.controller;

import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.co.greenart.filmo.model.dto.Filmo;
import kr.co.greenart.filmo.model.service.FilmoServiceImpl;
import kr.co.greenart.movie.model.dto.Movie;
import kr.co.greenart.movie.model.service.MovieServiceImpl;
import kr.co.greenart.staff.model.dto.Staff;
import kr.co.greenart.staff.model.service.StaffServiceImpl;

@Controller
@RequestMapping("/staff")
public class StaffController {

	public static final String UPLOAD_PATH = "C:\\Users\\user\\git\\final_project\\project\\src\\main\\webapp\\resources\\uploads\\";
	
	@Autowired
	StaffServiceImpl staffService;
	
	@Autowired
	FilmoServiceImpl filmoService;
	
	@Autowired
	MovieServiceImpl movieService;
	
	@GetMapping("/test.do")
	public String testStaff() {
		return "staff/staff";
	}
	
	@PostMapping("/add.do")
	public String addStaff(Staff s,MultipartFile upload) { 
		
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
			
			s.setStaff_upload_path(UPLOAD_PATH);
			s.setStaff_upload_name(originalName);
			s.setStaff_upload_origin_name(fileName);
			
			System.out.println(s);
			
			try {
				upload.transferTo(filePath);
			} catch(IllegalStateException e) {
				e.printStackTrace();
			} catch(IOException e) {
				e.printStackTrace();
			}
		}
		
		System.out.println(staffService.insertStaff(s));
		
		return "redirect:/staff/test.do";
	}

	@PostMapping("/ajax")
	@ResponseBody
	public void ajaxStaff(HttpServletResponse response) {
		
		
		List<Staff> list = staffService.selectStaffAll();
		JSONObject jsonDorian = new JSONObject();
		response.setCharacterEncoding("UTF-8");
		jsonDorian.put("list", list);
		System.out.println(jsonDorian);
		
		try {
			response.getWriter().print(jsonDorian);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@GetMapping("/list.do")
	public String staffList(Model m) {
		
		List<Staff> list = staffService.selectStaffAll();

		m.addAttribute("staffList",list);
		
		return "staff/list";
	}
	
	@GetMapping("/detail")
	public String staffDetail(@RequestParam(value="id") int staff_index,Model model) {
		Staff staff =staffService.selectStaffById(staff_index);

		List<Filmo> filmoList = filmoService.selectFilmoByStaffId(staff.getStaff_index());
		
		System.out.println(filmoList);
		
		List<Movie> movieList = new ArrayList<Movie>();
		
		for(int i = 0 ; i < filmoList.size() ; i++) {
			movieList.add(movieService.selectMovieById(filmoList.get(i).getMovie_index()));
		}
		
		model.addAttribute("movieList",movieList);
		
		model.addAttribute("staff",staff);
		
		return "staff/staff_detail";
	}
}
