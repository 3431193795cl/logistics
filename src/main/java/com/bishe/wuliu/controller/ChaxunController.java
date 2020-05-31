package com.bishe.wuliu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bishe.wuliu.pojo.Chaxun;
import com.bishe.wuliu.service.ChaxunService;
import com.bishe.wuliu.util.Result;

@Controller
@RequestMapping("chaxun")
public class ChaxunController {
	@Autowired
	private ChaxunService chaxunService;

	@RequestMapping("addChaxun.action")
	@ResponseBody
	public Result addChaxun(@RequestParam(value = "usernames", required = true) String xingming,
			@RequestParam(value = "phone", required = true) String shoujihao,
			@RequestParam(value = "com", required = true) String comname) {
		Chaxun chaxun = new Chaxun();
		chaxun.setXingming(xingming);
		chaxun.setShoujihao(shoujihao);
		chaxun.setCfd(comname);
		Integer i = chaxunService.addChaxun(chaxun);
		if (i >= 1) {
			return new Result(true, "ÉêÕˆ³É¹¦");
		} else {
			return new Result(false, "ÉêÕˆÊ§°Ü");
		}
	}

	@RequestMapping("deleChaxun.action")
	@ResponseBody
	public Result deleChaxun(@RequestParam(value = "number", required = true) String number) {
		Integer i = chaxunService.deleChaxun(number);
		if (i >= 1) {
			return new Result(true, "É¾³ı³É¹¦");
		} else {
			return new Result(false, "É¾³ıÊ§°Ü");
		}
	}
}
