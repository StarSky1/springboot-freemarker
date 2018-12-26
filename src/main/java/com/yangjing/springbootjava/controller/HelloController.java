package com.yangjing.springbootjava.controller;


import com.yangjing.springbootjava.model.tag.SortMethod;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class HelloController {

    @RequestMapping("/")
    public String welcome(HttpServletRequest request){
        request.setAttribute("name","Mr.Yang");
        request.setAttribute("sort_int",new SortMethod());
        return "index";
    }

    @RequestMapping("/index1")
    public String index1(HttpServletRequest request){
        return "index1";
    }

    @RequestMapping("/index2")
    public String index2(HttpServletRequest request){
        return "index2";
    }
}
