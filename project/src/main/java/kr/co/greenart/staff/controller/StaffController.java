package kr.co.greenart.staff.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.greenart.staff.model.dto.Staff;
import kr.co.greenart.staff.model.service.StaffServiceImpl;

@Controller
@RequestMapping("/staff")
public class StaffController {

	
	@Autowired
	StaffServiceImpl staffService;
	
	@GetMapping("/test.do")
	public String testStaff() {
		return "staff/staff";
	}
	
	@PostMapping("/add.do")
	public String addStaff(Staff s) { 
		
		System.out.println(s);
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
