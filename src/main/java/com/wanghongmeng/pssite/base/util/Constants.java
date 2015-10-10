package com.wanghongmeng.pssite.base.util;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: wanghongmeng
 * Date: 10/16/13
 * Time: 10:35 PM
 * To change this template use File | Settings | File Templates.
 */
public class Constants {
    public static final String CATAGORY_DIARY = "diary";
    public static final String CATAGORY_ALBUM = "album";
    public static final String CATAGORY_ALBUM_PHOTO = "albumPhoto";
    public static final String CATAGORY_BLOG = "blog";
    public static final String CATAGORY_SHARE = "share";
    public static final String CATAGORY_ABOUT = "about";
    public static final int PAGE_SIZE_7 = 7;
    public static final int PAGE_SIZE_9 = 9;
    public static final int PAGE_SIZE_10 = 10;
    public static final String TITLE = "小王的空间";
    public static final String SUB_TITLE_DIARY = "心情日记";
    public static final String SUB_TITLE_ALBUM = "照片墙";
    public static final String SUB_TITLE_BLOG = "博客";
    public static final String SUB_TITLE_SHARE = "分享";
    public static final String SUB_TITLE_ABOUT = "关于我";
    public static final String SEO_KEYWORD = "王洪孟,小王,小王的空间,小王family";
    public static final String SEO_DESCRIPTION= "欢迎光临小王的空间,本网站由小王挨行码成!";
    public static final String URL_STATIC_PREFIX = "http://static.wanghongmeng.com";
    private static final List<String> MOBILE_AGENT_LIST = Arrays.asList(new String[]{"Android","iPhone","windows phone","symbian"});

    public static boolean isMobile(String userAgent){
        if(isNull(userAgent)){
            return false;
        }
        for(String s : MOBILE_AGENT_LIST){
            if(userAgent.contains(s)){
                return true;
            }
        }
        return false;
    }

    public static boolean isNull(String str){
        if(null == str || "".equals(str)){
            return true;
        }
        return false;
    }

}
