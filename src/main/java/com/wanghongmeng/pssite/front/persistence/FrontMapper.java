package com.wanghongmeng.pssite.front.persistence;

import com.wanghongmeng.pssite.front.model.Person;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: hongmengwang
 * Date: 13-7-29
 * Time: 上午11:17
 * To change this template use File | Settings | File Templates.
 */
public interface FrontMapper {
    List<Person> queryPerson();
}
