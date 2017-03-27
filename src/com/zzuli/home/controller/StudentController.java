package com.zzuli.home.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/page/student")
public class StudentController {

    @RequestMapping(value = "/select", method = RequestMethod.GET)
    public ModelAndView login() {
        System.out.println("this is the student work page");
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("student");
    
        return modelAndView;
    }
}
