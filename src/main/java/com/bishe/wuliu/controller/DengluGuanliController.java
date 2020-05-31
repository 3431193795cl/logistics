package com.bishe.wuliu.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bishe.wuliu.pojo.DengluGuanli;
import com.bishe.wuliu.service.DengluGuanliService;
import com.bishe.wuliu.util.Result;

@Controller
@RequestMapping("dengluguanli")
public class DengluGuanliController {
	@Autowired
	private DengluGuanliService dengluGuanliService;

	@RequestMapping("adLogin.action")
	@ResponseBody
	public Result adLogin(@RequestParam(value = "username", required = true) String username,
			@RequestParam(value = "password", required = true) String password, HttpSession session) {
		DengluGuanli guanli = dengluGuanliService.adLogin(username, password);
		if (guanli != null) {
			session.setAttribute("guanli", guanli);
			return /* "admin/index" */new Result(true, "µÇÂ¼³É¹¦");
		} else {
			return /* "adminLogin" */new Result(false, "µÇÂ¼Ê§°Ü£¬ÇëºËÊµÃÜÂë»òÕËºÅ");
		}
	}
	
}
