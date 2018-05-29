package com.bru.controller;

import java.util.ArrayList;
import java.util.List;
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
	
	@RequestMapping(value = { "/insertRepair" }, method = RequestMethod.POST, produces = "application/json")
	public String xxx(@RequestBody RepairBean c) {
		try {
			repairDao.insert(repairBean);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "repair";
	}
	@RequestMapping(value = { "/repairmen" }, method = RequestMethod.GET)
	public String show(@RequestBody RepairBean repairmen) {
		try {
			repairDao.findAll();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "repairmen";
	}

	@RequestMapping(value = { "/table" }, method = RequestMethod.GET)
	public String xx(HttpServletRequest request) {
		List<RepairBean> list = new ArrayList<>();
		list = repairDao.findAll();
		request.getSession().setAttribute("listRepair", list);
		
		return "table";
	}
	@RequestMapping(value = { "/repairmen"}, method = RequestMethod.GET)
	public String repairmen(HttpServletRequest request) {
		List<RepairBean> list = new ArrayList<>();
		list = repairDao.findAll();
		request.getSession().setAttribute("listRepair", list);
		return "repairmen";
	}
}
