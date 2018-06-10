package com.lianwei.dao;

import com.lianwei.model.CarUsers;

import java.util.List;

public interface CarUsersDao {
    int deleteByPrimaryKey(String id);

    int insert(CarUsers record);

    int insertSelective(CarUsers record);

    CarUsers selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(CarUsers record);

    int updateByPrimaryKey(CarUsers record);

    //接口方法，通过用户名得到User对象
    CarUsers findUserByName(String name);

    // 通过用户名及密码核查用户登录
    CarUsers checkLogin(String name, String password);

    List<CarUsers> findAll();
}