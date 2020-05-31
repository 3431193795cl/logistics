package com.bishe.wuliu.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bishe.wuliu.pojo.Denglu;
import com.bishe.wuliu.service.DengluService;
import com.bishe.wuliu.util.Result;

@Controller
@RequestMapping("/denglu")
public class DengluController {
	@Autowired
	private DengluService dengluService;

	@RequestMapping("/login.action")
	@ResponseBody
	public Result login(@RequestParam(value = "name", required = true) String username,
			@RequestParam(value = "password", required = true) String password, HttpSession session) {
		Denglu denglu = dengluService.login(username, password);
		if (denglu != null) {
			session.setAttribute("denglu", denglu);
			return new Result(true, "登录成功！");
		} else {
			return new Result(false, "请验证用户名或密码的准确性！");
		}
	}
	
	@RequestMapping("/addDenglu.action")
	@ResponseBody
	public Result addDenglu(@RequestParam(value = "name", required = true) String username,
			@RequestParam(value = "password", required = true) String password) {
		Denglu denglu = new Denglu();
		denglu.setName(username);
		denglu.setPassword(password);
		Integer i = dengluService.addDenglu(denglu);
		if (i >= 1) {
			return new Result(true, "注册成功");
		} else {
			return new Result(false, "注册失败");
		}
	}
}
