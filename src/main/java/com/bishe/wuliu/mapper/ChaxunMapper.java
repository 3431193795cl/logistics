package com.bishe.wuliu.mapper;

import com.bishe.wuliu.pojo.Chaxun;
import com.bishe.wuliu.pojo.ChaxunExample;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ChaxunMapper {
    long countByExample(ChaxunExample example);

    int deleteByExample(ChaxunExample example);

    int deleteByPrimaryKey(String number);

    int insert(Chaxun record);

    int insertSelective(Chaxun record);

    List<Chaxun> selectByExample(ChaxunExample example);

    Chaxun selectByPrimaryKey(String number);

    int updateByExampleSelective(@Param("record") Chaxun record, @Param("example") ChaxunExample example);

    int updateByExample(@Param("record") Chaxun record, @Param("example") ChaxunExample example);

    int updateByPrimaryKeySelective(Chaxun record);

    int updateByPrimaryKey(Chaxun record);
}