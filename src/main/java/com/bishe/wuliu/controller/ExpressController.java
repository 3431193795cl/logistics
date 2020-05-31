package com.bishe.wuliu.controller;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bishe.wuliu.pojo.Express;
import com.bishe.wuliu.service.ExpressService;
import com.bishe.wuliu.util.DateUtil;
import com.bishe.wuliu.util.Result;

@Controller
@RequestMapping("express")
public class ExpressController {
	@Autowired
	private ExpressService expressService;

	@RequestMapping("/findExpressById.action")
	@ResponseBody
	public Express findExpressById(@RequestParam(value = "id", required = true) String id, Model model) {
		Express express = expressService.findExpressById(id);
		model.addAttribute("express", express);
		return express;
	}

	@RequestMapping("addExpress.action")
	public String addExpress(Express express,Model model) {
		String id = DateUtil.getId();
		express.setId(id);
		express.setPosttime(new Date());
		String type = "等待揽收";
		express.setType(type);
		Integer i = expressService.insertSelective(express);
		if (i >= 1) {
			model.addAttribute("dingdanId", id);
			model.addAttribute("type", type);
			return "success";
		} else {
			return "error";
		}
	}

	@RequestMapping("findExpessByfrom.action")
	@ResponseBody
	public List<Express> findExpessByfrom(@RequestParam(value = "fromlocation", required = true) String fromlocation,
			@RequestParam(value = "id", required = true) String id,
			Model model) {
		List<Express> list = expressService.findExpessByfrom(fromlocation,id);
		model.addAttribute("list", list);
		return list;
	}

	@RequestMapping("findExpessBycompany.action")
	@ResponseBody
	public List<Express> findExpessBycompany(@RequestParam(value = "company", required = true) String company,
			@RequestParam(value = "id", required = true) String id,
			Model model) {
		List<Express> list = expressService.findExpessBycompany(company,id);
		model.addAttribute("list", list);
		return list;
	}

	@RequestMapping("deleExp.action")
	@ResponseBody
	public Result deleExp(@RequestParam(value = "id", required = true) String id) {
		Integer i = expressService.deleExp(id);
		if (i >= 0) {
			return new Result(true, "删除成功");
		} else {
			return new Result(false, "删除失败");
		}
	}
	
	@RequestMapping("updateExp.action")
	@ResponseBody
	public Result updateExp(@RequestParam(value = "id", required = true) String id,
			@RequestParam(value = "company", required = true) String company) {
		Integer i = expressService.updateExp(id,company);
		if (i >= 0) {
			return new Result(true, "分配成功");
		} else {
			return new Result(false, "分配失败");
		}
	}
}
