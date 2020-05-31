package com.bishe.wuliu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bishe.wuliu.mapper.LiuyanbanMapper;
import com.bishe.wuliu.pojo.Liuyanban;
import com.bishe.wuliu.pojo.LiuyanbanExample;
import com.bishe.wuliu.service.LiuyanbanService;

@Service
public class LiuyanbanServiceImpl implements LiuyanbanService {
	@Autowired
	private LiuyanbanMapper liuyanbanMapper;

	@Override
	public Integer addLiuyan(Liuyanban liuyanban) {
		return liuyanbanMapper.insertSelective(liuyanban);
	}

	@Override
	public List<Liuyanban> findAll() {
		LiuyanbanExample example = new LiuyanbanExample();
		LiuyanbanExample.Criteria criteria = example.createCriteria();
		return liuyanbanMapper.selectByExample(example);
	}

	@Override
	public Integer deleLiuyan(String name) {
		return liuyanbanMapper.deleteByPrimaryKey(name);
	}
	
}
