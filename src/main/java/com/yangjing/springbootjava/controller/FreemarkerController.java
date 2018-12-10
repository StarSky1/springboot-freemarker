package com.yangjing.springbootjava.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @ClassName: FreemarkerAction
 * @Description: freemarker控制层
 * @author cheng
 * @date 2018年1月22日 下午8:19:39
 */
@Controller
@RequestMapping(value = "/freemarker")
public class FreemarkerController {

    /**
     * 日志管理
     */
    private static Logger log = LoggerFactory.getLogger(FreemarkerController.class);

    /**
     *
     * @Title: toDemo
     * @Description: 跳转freemarker页面
     * @param mv
     * @return
     */
    @RequestMapping(value = "/toDemo")
    public ModelAndView toDemo(ModelAndView mv) {
        log.info("====>>跳转freemarker页面");
        mv.addObject("name", "jack");
        mv.setViewName("test");
        return mv;
    }

    @RequestMapping(value = "/login")
    public String toLogin(Model model){
        log.info("====>>跳转login页面");

        return "login";
    }

}
