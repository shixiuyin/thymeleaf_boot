package com.hzit.thymeleaf.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class ThemleafController {

    @RequestMapping("/thyme2")
    public String thymeleaf(Model model, HttpSession session){


        //model.addAttribute("hello","hello,我是一只小小鸟");
        session.setAttribute("hello","我是session,我不是一个小小鸟");


        session.setAttribute("welcom","你好，欢迎你:{0}");


        /*前缀+名称+后缀*/
        return "redirect:/thyme_tz";
    }


    @RequestMapping("thyme_tz")
    public  String thyme2(){

        return "thyme";
    }


}
