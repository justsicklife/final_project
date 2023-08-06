package kr.co.greenart.filmo.model.service;

import java.util.List;

import kr.co.greenart.filmo.model.dto.Filmo;

public interface FilmoService {
	
	int insertFilmo(Filmo f);
	
	List<Filmo> selectFilmoByStaffId(int staff_index);
}
