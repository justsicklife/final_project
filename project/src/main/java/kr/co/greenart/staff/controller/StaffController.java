package kr.co.greenart.staff.controller;

import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Random;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.co.greenart.staff.model.dto.Staff;
import kr.co.greenart.staff.model.service.StaffServiceImpl;

@Controller
@RequestMapping("/staff")
public class StaffController {

	public static final String UPLOAD_PATH = "C:\\Users\\user\\git\\final_project\\project\\src\\main\\webapp\\resources\\uploads\\";
	
	@Autowired
	StaffServiceImpl staffService;
	
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
		
		
		List<Staff> list = staffService.selectStaff();
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
}
