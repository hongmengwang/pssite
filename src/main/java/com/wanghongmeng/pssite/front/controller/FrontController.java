package com.wanghongmeng.pssite.front.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created with IntelliJ IDEA.
 * User: hongmengwang
 * Date: 13-9-16
 * Time: 上午9:22
 * To change this template use File | Settings | File Templates.
 */
@Controller
public class FrontController {

//    @RequestMapping(value = "/index" ,method = RequestMethod.GET)
//    public ModelAndView test(ModelAndView modalAndView){
//        modalAndView.setViewName("main");
//        return modalAndView ;
//    }

    @RequestMapping(value = "/index" ,method = RequestMethod.GET)
    public String test(ModelAndView modalAndView){
        return "main" ;
    }

}