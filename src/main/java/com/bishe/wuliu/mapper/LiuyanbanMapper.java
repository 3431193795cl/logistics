package com.bishe.wuliu.mapper;

import com.bishe.wuliu.pojo.Liuyanban;
import com.bishe.wuliu.pojo.LiuyanbanExample;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface LiuyanbanMapper {
    long countByExample(LiuyanbanExample example);

    int deleteByExample(LiuyanbanExample example);

    int deleteByPrimaryKey(String name);

    int insert(Liuyanban record);

    int insertSelective(Liuyanban record);

    List<Liuyanban> selectByExample(LiuyanbanExample example);

    Liuyanban selectByPrimaryKey(String name);

    int updateByExampleSelective(@Param("record") Liuyanban record, @Param("example") LiuyanbanExample example);

    int updateByExample(@Param("record") Liuyanban record, @Param("example") LiuyanbanExample example);

    int updateByPrimaryKeySelective(Liuyanban record);

    int updateByPrimaryKey(Liuyanban record);
}