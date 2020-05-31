package com.bishe.wuliu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bishe.wuliu.mapper.DengluGuanliMapper;
import com.bishe.wuliu.pojo.DengluGuanli;
import com.bishe.wuliu.service.DengluGuanliService;

@Service
public class DengluGuanliServiceImpl implements DengluGuanliService {
	@Autowired
	private DengluGuanliMapper dengluGuanliMapper;

	@Override
	public DengluGuanli adLogin(String username, String password) {
		DengluGuanli denglu = dengluGuanliMapper.selectByPrimaryKey(username);
		if (denglu == null) {
			return null;
		}
		if (denglu.getPassword().equals(password)) {
			return denglu;
		} else {
			return null;
		}
	}

}
