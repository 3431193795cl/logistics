package com.bishe.wuliu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bishe.wuliu.pojo.Liuyanban;
import com.bishe.wuliu.service.LiuyanbanService;
import com.bishe.wuliu.util.Result;

@Controller
@RequestMapping("liuyanban")
public class LiuyanbanController {
	@Autowired
	private LiuyanbanService liuyanbanService;

	@RequestMapping("addLiuyan.action")
	@ResponseBody
	public Result addLiuyan(@RequestParam(value = "name", required = true) String name,
			@RequestParam(value = "eMail", required = true) String eMail,
			@RequestParam(value = "title", required = true) String title,
			@RequestParam(value = "liuyan", required = true) String liuyan) {
		Liuyanban liuyanban = new Liuyanban();
		liuyanban.setName(name);
		liuyanban.seteMail(eMail);
		liuyanban.setTitle(title);
		liuyanban.setLiuyan(liuyan);
		Integer i = liuyanbanService.addLiuyan(liuyanban);
		if (1 >= 1) {
			return new Result(true, "�����ɹ�");
		} else {
			return new Result(false, "����ʧ�ܣ��ǳ��ظ�");
		}
	}
	
	@RequestMapping("deleLiuyan.action")
	@ResponseBody
	public Result deleLiuyan(@RequestParam(value = "name", required = true) String name) {
		Integer i = liuyanbanService.deleLiuyan(name);
		if (1 >= 1) {
			return new Result(true, "ɾ���ɹ�");
		} else {
			return new Result(false, "ɾ��ʧ��");
		}
	}
}
