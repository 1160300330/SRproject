package com.dao;

import com.pojo.StockInfo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface StockInfoDao {
    List <StockInfo> getStockInfoList(String id);
    List <StockInfo> getStockInfoListLimited(@Param(value = "id")String id, @Param(value = "limit")Integer limit);
    void createTable(String id);
}
