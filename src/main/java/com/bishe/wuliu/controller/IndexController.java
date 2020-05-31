package com.bishe.wuliu.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bishe.wuliu.pojo.Chaxun;
import com.bishe.wuliu.pojo.Express;
import com.bishe.wuliu.pojo.Liuyanban;
import com.bishe.wuliu.pojo.Wangdian;
import com.bishe.wuliu.service.ChaxunService;
import com.bishe.wuliu.service.ExpressService;
import com.bishe.wuliu.service.LiuyanbanService;
import com.bishe.wuliu.service.WangdianService;

@Controller
public class IndexController {

	@Autowired
	private ExpressService expressSeriver;
	
	@Autowired
	private LiuyanbanService liuyanbanService;
	
	@Autowired
	private WangdianService wangdianService;
	
	@Autowired
	private ChaxunService chaxunService;

	@RequestMapping("toIndex.action")
	public String toIndex() {
		return "index";
	}

	@RequestMapping("toLogin.action")
	public String toLogin() {
		return "adminLogin";
	}

	@RequestMapping("toAdIndex.action")
	public String toAdIndex() {
		return "adIndex";
	}

	@RequestMapping("adLogout.action")
	public String adLogout(HttpSession session) {
		session.removeAttribute("guanli");
		return "adminLogin";
	}

	@RequestMapping("toAdExpTables.action")
	public String toAdExpTables(Model model) {
		List<Express> expresses = expressSeriver.findAll();
		model.addAttribute("exp", expresses);
		return "adExpTables";
	}
	
	@RequestMapping("toAdliuyanTables.action")
	public String toAdliuyanTables(Model model) {
		List<Liuyanban> liuyanbans = liuyanbanService.findAll();
		model.addAttribute("liu", liuyanbans);
		return "adliuyanTables";
	}
	
	@RequestMapping("toAdshixiaoTables.action")
	public String toAdwangdianTables(Model model) {
		List<Wangdian> wangdian = wangdianService.findAll();
		model.addAttribute("wangdian", wangdian);
		return "adwangdianTables";
	}
	
	@RequestMapping("toAdChaxunTables.action")
	public String findAll(Model model){
		List<Chaxun> chaxuns = chaxunService.findAll();
		model.addAttribute("chaxun", chaxuns);
		return "adChaxunTables";
	}
}
