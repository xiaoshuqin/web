package com.lianwei.service;

import com.lianwei.dao.CarUsersDao;
import com.lianwei.model.CarUsers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 付佳鸿 on 2018/5/28.
 */
@Service
public class CarUsersServiceImpl implements CarUsersService{
    @Autowired
    private CarUsersDao carUsersDao;
    public CarUsers findUserByName(String name) {
        return carUsersDao.findUserByName(name);
    }

    public CarUsers checkLogin(String name, String password) {
        //根据用户名实例化用户对象
        CarUsers user = carUsersDao.findUserByName(name);
        if (user != null && user.getPassword().equals(password)) {
            return user;
        }
        return null;
    }

    public int insertSelective(CarUsers record) {
        return carUsersDao.insertSelective(record);
    }

    public List<CarUsers> findAll() {
        return carUsersDao.findAll();
    }

}
