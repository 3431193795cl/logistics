package com.bishe.wuliu.service;

import com.bishe.wuliu.pojo.Express;
import com.bishe.wuliu.pojo.ExpressExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ExpressService {
	public Express findExpressById(String id);

	public int insertSelective(Express record);

	public List<Express> findExpessByfrom(String from,String id);

	public List<Express> findExpessBycompany(String company,String id);

	public List<Express> findAll();

	public Integer deleExp(String id);

	public Integer updateExp(String id, String company);
}