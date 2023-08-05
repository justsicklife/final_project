package kr.co.greenart.filmo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.greenart.filmo.model.dto.Filmo;
import kr.co.greenart.filmo.model.service.FilmoServiceImpl;

@Controller
@RequestMapping("/filmo")
public class FilmoController {
	
	@Autowired
	FilmoServiceImpl filmoService;
	
	@ResponseBody
	public int insertFilmo(Filmo f) {
		
		int result = filmoService.insertFilmo(f);
		
		return result;
	}
}
