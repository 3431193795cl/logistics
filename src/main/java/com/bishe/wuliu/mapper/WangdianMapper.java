package com.bishe.wuliu.mapper;

import com.bishe.wuliu.pojo.Wangdian;
import com.bishe.wuliu.pojo.WangdianExample;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface WangdianMapper {
	long countByExample(WangdianExample example);

	int deleteByExample(WangdianExample example);

	int deleteByPrimaryKey(String cfd);

	int insert(Wangdian record);

	int insertSelective(Wangdian record);

	List<Wangdian> selectByExample(WangdianExample example);

	Wangdian selectByPrimaryKey(String cfd);

	int updateByExampleSelective(@Param("record") Wangdian record, @Param("example") WangdianExample example);

	int updateByExample(@Param("record") Wangdian record, @Param("example") WangdianExample example);

	int updateByPrimaryKeySelective(Wangdian record);

	int updateByPrimaryKey(Wangdian record);

	public Wangdian findWangdianbyfromAndtolo(@Param("fromlocation") String fromlocation, @Param("tolocation") String tolocation);
}