package com.zzuli.home.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

public class test {

    @RequestMapping("/hello")
    public @ResponseBody String test1() {
        return "hello, world! This com from spring!";
    }
}
