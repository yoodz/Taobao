package com.zzuli.home.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.zzuli.home.base.JsonMessage;
import com.zzuli.home.base.JsonMessage.MessageEntry;
import com.zzuli.home.model.User;
import com.zzuli.home.service.UserService;

@Controller
@RequestMapping("/page/user")
public class UserController {
    
    @Resource
    private UserService userService;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("login");
        return modelAndView;
    }

    @ResponseBody
    @RequestMapping(value = "/validate", method = RequestMethod.POST)
    public MessageEntry validate(@RequestBody User user) {
        
        System.out.println("you are success in controller");
        boolean isSuccess = userService.validate(user);
        return JsonMessage.ok(isSuccess);
    }
}
