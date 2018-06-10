package com.lianwei.service;

import com.lianwei.model.CarUsers;

import java.util.List;

/**
 * Created by 付佳鸿 on 2018/5/28.
 */
public interface CarUsersService {
    //接口方法，通过用户名得到User对象
    CarUsers findUserByName(String name);

    // 通过用户名及密码核查用户登录
    CarUsers checkLogin(String name, String password);

    int insertSelective(CarUsers record);

    List<CarUsers> findAll();
}
