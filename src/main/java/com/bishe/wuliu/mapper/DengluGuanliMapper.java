package com.bishe.wuliu.mapper;

import com.bishe.wuliu.pojo.DengluGuanli;
import com.bishe.wuliu.pojo.DengluGuanliExample;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface DengluGuanliMapper {
    long countByExample(DengluGuanliExample example);

    int deleteByExample(DengluGuanliExample example);

    int deleteByPrimaryKey(String name);

    int insert(DengluGuanli record);

    int insertSelective(DengluGuanli record);

    List<DengluGuanli> selectByExample(DengluGuanliExample example);

    DengluGuanli selectByPrimaryKey(String name);

    int updateByExampleSelective(@Param("record") DengluGuanli record, @Param("example") DengluGuanliExample example);

    int updateByExample(@Param("record") DengluGuanli record, @Param("example") DengluGuanliExample example);

    int updateByPrimaryKeySelective(DengluGuanli record);

    int updateByPrimaryKey(DengluGuanli record);
}