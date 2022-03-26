package com.dao;

import com.pojo.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UserDao {

    List<User> getUserList();

    void createTable(String id);
}