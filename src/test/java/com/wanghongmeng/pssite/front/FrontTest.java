package com.wanghongmeng.pssite.front;

import com.wanghongmeng.pssite.front.model.PersonDiary;
import com.wanghongmeng.pssite.front.service.FrontService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: wanghongmeng
 * Date: 9/21/13
 * Time: 1:33 PM
 * To change this template use File | Settings | File Templates.
 */

@RunWith(value = SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath*:spring-*.xml")
public class FrontTest {

    @Autowired
    private FrontService frontService;

    @Test
    public void testGetDiary(){
        List<PersonDiary> list = frontService.queryPersonDiary("xiaowang");
        System.out.println(list);
    }
}
