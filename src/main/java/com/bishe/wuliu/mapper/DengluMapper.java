package com.bishe.wuliu.mapper;

import com.bishe.wuliu.pojo.Denglu;
import com.bishe.wuliu.pojo.DengluExample;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface DengluMapper {
    long countByExample(DengluExample example);

    int deleteByExample(DengluExample example);

    int deleteByPrimaryKey(String name);

    int insert(Denglu record);

    int insertSelective(Denglu record);

    List<Denglu> selectByExample(DengluExample example);

    Denglu selectByPrimaryKey(String name);

    int updateByExampleSelective(@Param("record") Denglu record, @Param("example") DengluExample example);

    int updateByExample(@Param("record") Denglu record, @Param("example") DengluExample example);

    int updateByPrimaryKeySelective(Denglu record);

    int updateByPrimaryKey(Denglu record);
}