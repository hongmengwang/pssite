package com.wanghongmeng.pssite.front.controller;

import com.wanghongmeng.pssite.base.util.Constants;
import com.wanghongmeng.pssite.front.service.FrontService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
    @Autowired
    private FrontService frontService;

    @RequestMapping(value = "/" ,method = RequestMethod.GET)
    public ModelAndView index(ModelAndView modelAndView){
        modelAndView.addObject("title",Constants.TITLE);
        modelAndView.addObject("photoList",frontService.queryIndexPhoto());
        modelAndView.addObject("personList", frontService.queryPerson());
        modelAndView.setViewName("front/index");
        return modelAndView;
    }

//    @RequestMapping(value = "/front/photo" ,method = RequestMethod.GET)
//    @ResponseBody
//    public List<Photo> getPhoto(){
//        List<Photo> photoList = frontService.queryIndexPhoto();
//        return photoList;
//    }
//
//    @RequestMapping(value = "/front/person" ,method = RequestMethod.GET)
//    @ResponseBody
//    public List<Person> getPerson(){
//        List<Person> personList = frontService.queryPerson();
//        return personList;
//    }

    @RequestMapping(value = "/front/{nick}/{catagory}" ,method = RequestMethod.GET)
    public ModelAndView catagory(@PathVariable("nick") String nick,@PathVariable("catagory") String catagory,ModelAndView modelAndView){
        modelAndView.addObject("nick",nick);
        modelAndView.addObject("catagory",catagory);
        if(Constants.CATAGORY_DIARY.equals(catagory)){
            modelAndView.addObject("title",Constants.TITLE + "-" + Constants.SUB_TITLE_DIARY);
            modelAndView.addObject("diaryList",frontService.queryDiary(nick));
        }
        if(Constants.CATAGORY_ALBUM.equals(catagory)){
            modelAndView.addObject("title",Constants.TITLE + "-" + Constants.SUB_TITLE_ALBUM);
            modelAndView.addObject("albumList",frontService.queryAlbum(nick));
        }
        if(Constants.CATAGORY_SHARE.equals(catagory)){
            modelAndView.addObject("title",Constants.TITLE + "-" + Constants.SUB_TITLE_SHARE);
        }
        if(Constants.CATAGORY_ME.equals(catagory)){
            modelAndView.addObject("title",Constants.TITLE + "-" + Constants.SUB_TITLE_ME);
            modelAndView.addObject("aboutList",frontService.queryMe(nick));
        }
        modelAndView.setViewName("front/" + catagory);
        return modelAndView;
    }


    @RequestMapping(value = "/front/{nick}/album/{albumId}" ,method = RequestMethod.GET)
    public ModelAndView albumPhoto(@PathVariable("nick") String nick,@PathVariable("albumId") int albumId,ModelAndView modelAndView){
        modelAndView.addObject("title",Constants.TITLE + "-" + Constants.SUB_TITLE_ALBUM + "-" + frontService.queryAlbumById(albumId).getAlbumName());
        modelAndView.addObject("photoList",frontService.queryAlbumPhoto(albumId));
        modelAndView.setViewName("front/albumphoto");
        return modelAndView;
    }

//    @RequestMapping(value = "/front/{nick}/diary/list" ,method = RequestMethod.GET)
//    @ResponseBody
//    public List<Diary> getDiary(@PathVariable("nick") String nick){
//        List<Diary> diaryList = frontService.queryDiary(nick);
//        return diaryList;
//    }
}