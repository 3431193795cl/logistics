package com.bishe.wuliu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bishe.wuliu.mapper.WangdianMapper;
import com.bishe.wuliu.pojo.Wangdian;
import com.bishe.wuliu.pojo.WangdianExample;
import com.bishe.wuliu.service.WangdianService;

@Service
public class WangdianServiceImpl implements WangdianService {
	@Autowired
	private WangdianMapper wangdianMapper;

	@Override
	public Wangdian findWangdian(String fromlocation, String tolocation) {
		return wangdianMapper.findWangdianbyfromAndtolo(fromlocation, tolocation);
	}

	@Override
	public List<Wangdian> findAll() {
		WangdianExample example = new WangdianExample();
		WangdianExample.Criteria criteria = example.createCriteria();
		return wangdianMapper.selectByExample(example);
	}

	@Override
	public Integer addWangdian(Wangdian wangdian) {
		return wangdianMapper.insertSelective(wangdian);
	}

	@Override
	public Integer updateWangdian(Wangdian wangdian) {
		return wangdianMapper.updateByPrimaryKeySelective(wangdian);
	}

	@Override
	public Integer deleteWangdian(Wangdian wangdian) {
		WangdianExample example = new WangdianExample();
		WangdianExample.Criteria criteria = example.createCriteria();
		criteria.andCfdEqualTo(wangdian.getCfd());
		criteria.andJsdEqualTo(wangdian.getJsd());
		return wangdianMapper.deleteByExample(example);
	}

}
