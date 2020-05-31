package com.bishe.wuliu.controller;

import static org.hamcrest.CoreMatchers.nullValue;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bishe.wuliu.pojo.Wangdian;
import com.bishe.wuliu.service.WangdianService;
import com.bishe.wuliu.util.Result;

@Controller
@RequestMapping("wangdian")
public class WangDianController {
	@Autowired
	private WangdianService wangdianService;

	@RequestMapping("findWangdian.action")
	@ResponseBody
	public Wangdian findWangdian(@RequestParam(value = "fromlocation", required = true) String fromlocation,
			@RequestParam(value = "tolocation", required = true) String tolocation) {
		Wangdian wangdian = wangdianService.findWangdian(fromlocation, tolocation);
		return wangdian;
	}

	@RequestMapping("deleWang.action")
	@ResponseBody
	public Result deleWang(@RequestParam(value = "cfd", required = true) String cfd,
			@RequestParam(value = "jsd", required = true) String jsd) {
		Wangdian wangdian = new Wangdian();
		wangdian.setCfd(cfd);
		wangdian.setJsd(jsd);
		Integer i = wangdianService.deleteWangdian(wangdian);
		if (i >= 1) {
			return new Result(true, "删除成功");
		} else {
			return new Result(true, "删除失败");
		}
	}

	@RequestMapping("updateWang.action")
	@ResponseBody
	public Result updateWang(@RequestParam(value = "cfd", required = true) String cfd,
			@RequestParam(value = "jsd", required = true) String jsd,
			@RequestParam(value = "sj", required = true) String sj,
			@RequestParam(value = "zl", required = true) String zl,
			@RequestParam(value = "jg", required = true) String jg) {
		Wangdian wangdian = new Wangdian();
		wangdian.setCfd(cfd);
		wangdian.setJsd(jsd);
		wangdian.setSj(sj);
		wangdian.setZl(zl);
		wangdian.setJg(jg);
		Integer i = wangdianService.updateWangdian(wangdian);
		if (i >= 1) {
			return new Result(true, "修改成功");
		} else {
			return new Result(true, "修改失败");
		}
	}

	@RequestMapping("addWang.action")
	@ResponseBody
	public Result addWang(@RequestParam(value = "cfd", required = true) String cfd,
			@RequestParam(value = "jsd", required = true) String jsd,
			@RequestParam(value = "sj", required = true) String sj,
			@RequestParam(value = "zl", required = true) String zl,
			@RequestParam(value = "jg", required = true) String jg) {
		Wangdian wangdian = new Wangdian();
		wangdian.setCfd(cfd);
		wangdian.setJsd(jsd);
		wangdian.setSj(sj);
		wangdian.setZl(zl);
		wangdian.setJg(jg);
		Integer i = wangdianService.addWangdian(wangdian);
		if (i >= 1) {
			return new Result(true, "增加成功");
		} else {
			return new Result(true, "增加失败");
		}
	}
}
