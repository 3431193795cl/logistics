package com.bishe.wuliu.service;

import com.bishe.wuliu.pojo.Liuyanban;
import com.bishe.wuliu.pojo.LiuyanbanExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LiuyanbanService {
	public Integer addLiuyan(Liuyanban liuyanban);
	
	public List<Liuyanban> findAll();
	
	public Integer deleLiuyan(String name);
}