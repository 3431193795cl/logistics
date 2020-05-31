package com.bishe.wuliu.service;

import com.bishe.wuliu.pojo.Wangdian;
import com.bishe.wuliu.pojo.WangdianExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface WangdianService {
	public Wangdian findWangdian(String fromlocation, String tolocation);
	
	public List<Wangdian> findAll();
	
	public Integer addWangdian(Wangdian wangdian);
	
	public Integer updateWangdian(Wangdian wangdian);
	
	public Integer deleteWangdian(Wangdian wangdian);
}