package com.service;

import com.pojo.StockInfo;

import java.util.List;

public interface StockService {
    List<StockInfo> queryAll(String id);
    StockInfo queryById(String id);//查
}
