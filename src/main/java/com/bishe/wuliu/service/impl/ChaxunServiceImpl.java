package com.bishe.wuliu.service.impl;

import com.bishe.wuliu.mapper.ChaxunMapper;
import com.bishe.wuliu.pojo.Chaxun;
import com.bishe.wuliu.pojo.ChaxunExample;
import com.bishe.wuliu.service.ChaxunService;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ChaxunServiceImpl implements ChaxunService {

	@Autowired
	private ChaxunMapper chaxunMapper;

	@Override
	public Integer addChaxun(Chaxun chaxun) {
		return chaxunMapper.insertSelective(chaxun);
	}

	@Override
	public List<Chaxun> findAll() {
		ChaxunExample example = new ChaxunExample();
		ChaxunExample.Criteria criteria = example.createCriteria();
		return chaxunMapper.selectByExample(example);
	}

	@Override
	public Integer deleChaxun(String id) {
		return chaxunMapper.deleteByPrimaryKey(id);
	}

}