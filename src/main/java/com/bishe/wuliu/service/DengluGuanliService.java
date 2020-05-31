package com.bishe.wuliu.service;

import com.bishe.wuliu.pojo.DengluGuanli;
import com.bishe.wuliu.pojo.DengluGuanliExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DengluGuanliService {
	public DengluGuanli adLogin(String username,String password);
}