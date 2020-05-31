package com.bishe.wuliu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bishe.wuliu.mapper.DengluMapper;
import com.bishe.wuliu.pojo.Denglu;
import com.bishe.wuliu.service.DengluService;

@Service
public class DengluServiceImpl implements DengluService {

	@Autowired
	private DengluMapper dengluMapper;

	@Override
	public Denglu login(String username, String password) {
		Denglu denglu = dengluMapper.selectByPrimaryKey(username);
		if (denglu == null) {
			return null;
		}
		if (denglu.getPassword().equals(password)) {
			return denglu;
		} else {
			return null;
		}
	}

	@Override
	public Integer addDenglu(Denglu denglu) {
		return dengluMapper.insertSelective(denglu);
	}

}
