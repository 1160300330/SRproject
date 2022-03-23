package com.dao;

import com.pojo.User;

import java.util.List;

public interface UserDao {
    List<User> getUserList();
    void createTable(String id);
}