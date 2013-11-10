package com.wanghongmeng.pssite.front.controller;

import com.wanghongmeng.pssite.base.util.Constants;
import com.wanghongmeng.pssite.front.model.Album;
import com.wanghongmeng.pssite.front.model.PersonShare;
import com.wanghongmeng.pssite.front.service.FrontService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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
    public ModelAndView index(ModelAndView modelAndView){
        modelAndView.addObject("title",Constants.TITLE);
        modelAndView.addObject("indexPhotoList",frontService.queryIndexPhoto());
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
//        List<Person> personList = frontService.queryPersonAbout();
//        return personList;
//    }

    @RequestMapping(value = "/front/{nick}/{catagory}" ,method = RequestMethod.GET)
    public ModelAndView catagory(@PathVariable("nick") String nick,@PathVariable("catagory") String catagory,ModelAndView modelAndView){
        modelAndView.addObject("nick",nick);
        modelAndView.addObject("catagory",catagory);
        if(Constants.CATAGORY_DIARY.equals(catagory)){
            modelAndView.addObject("title",Constants.TITLE + "-" + Constants.SUB_TITLE_DIARY);
            modelAndView.addObject("personDiaryList",frontService.queryPersonDiary(nick));
        }
        if(Constants.CATAGORY_ALBUM.equals(catagory)){
            modelAndView.addObject("title",Constants.TITLE + "-" + Constants.SUB_TITLE_ALBUM);
            modelAndView.addObject("albumList",frontService.queryAlbum(nick));
        }
        if(Constants.CATAGORY_BLOG.equals(catagory)){
            modelAndView.addObject("title",Constants.TITLE + "-" + Constants.SUB_TITLE_BLOG);
        }
        if(Constants.CATAGORY_SHARE.equals(catagory)){
            modelAndView.addObject("title",Constants.TITLE + "-" + Constants.SUB_TITLE_SHARE);
            modelAndView.addObject("personShareList",frontService.queryPersonShare(nick));
        }
        if(Constants.CATAGORY_ABOUT.equals(catagory)){
            modelAndView.addObject("title",Constants.TITLE + "-" + Constants.SUB_TITLE_ABOUT);
            modelAndView.addObject("personAboutList",frontService.queryPersonAbout(nick));
        }
        modelAndView.setViewName("front/" + catagory);
        return modelAndView;
    }


    @RequestMapping(value = "/front/{nick}/album/{albumId}" ,method = RequestMethod.GET)
    public ModelAndView albumPhoto(@PathVariable("nick") String nick,@PathVariable("albumId") int albumId,ModelAndView modelAndView){
        modelAndView.addObject("title",Constants.TITLE + "-" + Constants.SUB_TITLE_ALBUM + "-" + frontService.queryAlbumById(albumId).getAlbumName());
        modelAndView.addObject("albumPhotoList",frontService.queryAlbumPhoto(albumId));
        modelAndView.setViewName("front/albumPhoto");
        return modelAndView;
    }


    @RequestMapping(value = "/front/{nick}/share/{shareId}" ,method = RequestMethod.GET)
    public ModelAndView share(@PathVariable("nick") String nick,@PathVariable("shareId") int shareId,ModelAndView modelAndView){
        PersonShare personShare = frontService.queryPersonShareById(shareId);
        modelAndView.addObject("title",Constants.TITLE + "-" + Constants.SUB_TITLE_SHARE + "-" + personShare.getShareComment());
        modelAndView.addObject("personShare",personShare);
        modelAndView.setViewName("front/shareContent");
        return modelAndView;
    }

//    @RequestMapping(value = "/front/{nick}/diary/list" ,method = RequestMethod.GET)
//    @ResponseBody
//    public List<Diary> getDiary(@PathVariable("nick") String nick){
//        List<Diary> diaryList = frontService.queryPersonDiary(nick);
//        return diaryList;
//    }
}