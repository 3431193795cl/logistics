package com.bishe.wuliu.service;

import com.bishe.wuliu.pojo.Denglu;
import com.bishe.wuliu.pojo.DengluExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DengluService {
	/*
	 * ��¼
	 */
	public Denglu login(String username,String password);
	
	public Integer addDenglu(Denglu denglu);
}