package com.bru.controller;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import com.bru.dao.AjexDao;
import com.bru.dao.RepairDao;
import com.bru.model.RepairBean;
import com.bru.model.TestAjexBean;
import com.bru.model.TypeAppliances;
import com.bru.model.TypeProduct;

@RestController
public class AjexController {

	@Autowired
	AjexDao ajexDao;
	
	@Autowired
	RepairDao repairDao;
	
	// Drop-down
	@RequestMapping(value = "/a")
	public List<TypeAppliances> aa() {
		List<TypeAppliances> list = new ArrayList<>();
		list = ajexDao.sle1();
		return list;
	}

	@RequestMapping(value = "/b", method = RequestMethod.POST)
	public List<TypeProduct> bb(@RequestBody TestAjexBean testAjexBean) {
		String v = "";
		v = testAjexBean.getZz();
		List<TypeProduct> list = new ArrayList<>();
		list = ajexDao.sle2(v);

		return list;
	}
	
	
//	//show Repairman
//	@RequestMapping(value = "/show")
//	public List<RepairBean> show() {
//		List<RepairBean> list = new ArrayList<>();
//		list = repairDao.findAll();
//		return list;
//	}
}
