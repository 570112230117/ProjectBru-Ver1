package com.bru.controller;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.bru.dao.RepairDao;
import com.bru.model.RepairBean;

@Controller
public class RepairController {

	@Autowired
	RepairDao repairDao;

	@RequestMapping(value = { "/" }, method = RequestMethod.GET)
	public String repair(Model model) {
		return "repair";
	}
	//insert
	@RequestMapping(value = { "/insertRepair" }, method = RequestMethod.POST, produces = "application/json")
	public Map<String, String> xxx(@RequestBody RepairBean repairBean) {
		try {
			repairDao.insert(repairBean);
		} catch (Exception e) {
			e.printStackTrace();
		}
		Map<String, String> xxx = new HashMap<String, String>();
		return xxx;
	}

	//ตาราง
	@RequestMapping(value = { "/table" }, method = RequestMethod.GET)
	public String table(HttpServletRequest request) {
		List<RepairBean> list = new ArrayList<>();
		list = repairDao.findAll();
		request.getSession().setAttribute("listRepair", list);
		return "table";
	}

	//tabel to repairmen
	@RequestMapping("/gotorepairmen")
	public String gotorepairmen(Model model, String repairId, HttpServletRequest request) {
		try {
			request.getSession().setAttribute("repairId", repairId);
			model.addAttribute("repairId", repairId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "repairmen";

	}
}
