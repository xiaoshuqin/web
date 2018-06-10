package com.lianwei.controller;

import com.lianwei.model.CarUsers;
import com.lianwei.service.CarUsersService;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by 肖淑琴 on 2018/5/26.
 */


@Controller
public class CarUsersController {
    @Resource
    private CarUsersService carUsersService;
    @RequestMapping(value="/carusers")
    public ModelAndView getUserInfo(){
        return findAll();
    }
    public ModelAndView findAll(){
        ModelAndView modelAndView = new ModelAndView("carusers");
        List<CarUsers> carusers = new ArrayList<CarUsers>();
        carusers = carUsersService.findAll();
        modelAndView.addObject("carusers",carusers);
        return modelAndView;
    }

    @RequestMapping("/addUsers")
    public String addUsers(){
        return "login";
    }
    @RequestMapping("/add")
    public String add(CarUsers carUsers){
        carUsersService.insertSelective(carUsers);

        return "login";
    }
    @RequestMapping("/toAdd")
    public String toAdd(){
        return "add";
    }
    @RequestMapping("/exit")
    public String exit(){
        return "login";
    }
    @RequestMapping(value="/login")
    public String login(CarUsers carUsers, Model model) throws Exception {
        carUsers=carUsersService.checkLogin(carUsers.getName(), carUsers.getPassword());
        if(carUsers!=null){
            model.addAttribute(carUsers);
            return "shop";// 路径 WEB-INF/pages/welcome.jsp
        }
        return "login";
    }
    @RequestMapping("/details")
    public String details(){
        return "details";
    }

    @RequestMapping("/shop")
    public String shop(){
        return "shop";
    }
    @RequestMapping("/hello")
    public String hello(){
        return "hello";
    }
    @RequestMapping("/company")
    public String company(){
        return "company";
    }
    @RequestMapping("/help")
    public String help(){
        return "help";
    }
}
