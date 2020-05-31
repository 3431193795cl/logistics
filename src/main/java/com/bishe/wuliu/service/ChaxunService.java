package com.bishe.wuliu.service;

import com.bishe.wuliu.pojo.Chaxun;
import com.bishe.wuliu.pojo.ChaxunExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ChaxunService {
   public Integer addChaxun(Chaxun chaxun);
   
   public List<Chaxun> findAll();
   
   public Integer deleChaxun(String id);
}