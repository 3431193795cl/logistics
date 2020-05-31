package com.bishe.wuliu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bishe.wuliu.mapper.ExpressMapper;
import com.bishe.wuliu.pojo.Express;
import com.bishe.wuliu.pojo.ExpressExample;
import com.bishe.wuliu.service.ExpressService;

@Service
public class ExpressServiceImpl implements ExpressService {
	@Autowired
	private ExpressMapper expressMapper;

	@Override
	public Express findExpressById(String id) {
		return expressMapper.selectByPrimaryKey(id);
	}

	@Override
	public int insertSelective(Express record) {
		return expressMapper.insertSelective(record);
	}

	@Override
	public List<Express> findExpessByfrom(String from,String id) {
		ExpressExample example = new ExpressExample();
		ExpressExample.Criteria criteria = example.createCriteria();
		criteria.andFromlocationLike("%" + from + "%");
		criteria.andIdEqualTo(id);
		return expressMapper.selectByExample(example);
	}

	@Override
	public List<Express> findExpessBycompany(String company,String id) {
		ExpressExample example = new ExpressExample();
		ExpressExample.Criteria criteria = example.createCriteria();
		criteria.andCompanyLike("%" + company + "%");
		criteria.andIdEqualTo(id);
		return expressMapper.selectByExample(example);
	}

	@Override
	public List<Express> findAll() {
		ExpressExample example = new ExpressExample();
		ExpressExample.Criteria criteria = example.createCriteria();
		return expressMapper.selectByExample(example);
	}

	@Override
	public Integer deleExp(String id) {
		return expressMapper.deleteByPrimaryKey(id);
	}

	@Override
	public Integer updateExp(String id, String company) {
		Express record = expressMapper.selectByPrimaryKey(id);
		record.setType("“—¿ø ’");
		record.setCompany(company);
		return expressMapper.updateByPrimaryKey(record);
	}
	
}
