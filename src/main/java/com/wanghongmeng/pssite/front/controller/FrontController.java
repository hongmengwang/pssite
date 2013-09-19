package com.wanghongmeng.pssite.front.controller;

import com.wanghongmeng.pssite.front.model.Person;
import com.wanghongmeng.pssite.front.service.FrontService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: hongmengwang
 * Date: 13-9-16
 * Time: 上午9:22
 * To change this template use File | Settings | File Templates.
 */
@Controller
public class FrontController {
    @Autowired
    private FrontService frontService;

    @RequestMapping(value = "/" ,method = RequestMethod.GET)
    public String index(){
        return "front/index";
    }

    @RequestMapping(value = "/front/person" ,method = RequestMethod.GET)
    @ResponseBody
    public List<Person> listPerson(){
        List<Person> personList = frontService.queryPerson();
        return personList;
    }
}