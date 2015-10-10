package com.wanghongmeng.pssite.front.controller;

import com.wanghongmeng.pssite.base.util.Constants;
import com.wanghongmeng.pssite.front.model.PersonShare;
import com.wanghongmeng.pssite.front.service.FrontService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
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
    public ModelAndView index(ModelAndView modelAndView,HttpServletRequest request){
        modelAndView.addObject("title",Constants.TITLE);
        modelAndView.addObject("indexPhotoList",frontService.queryIndexPhoto());
        modelAndView.addObject("personList", frontService.queryPerson());

        String userAgent = request.getHeader("user-agent");
        if(Constants.isMobile(userAgent)){
            modelAndView.addObject("isMobile","1");
            modelAndView.setViewName("front/m.index");
        }else{
            modelAndView.setViewName("front/index");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/error" ,method = RequestMethod.GET)
    public ModelAndView error(ModelAndView modelAndView){
        modelAndView.setViewName("base/error");
        return modelAndView;
    }

    @RequestMapping(value = "/front/{nick}/{catagory}" ,method = RequestMethod.GET)
    public ModelAndView catagory(@PathVariable("nick") String nick,@PathVariable("catagory") String catagory,ModelAndView modelAndView){
        if(!frontService.isValidateNick(nick)){
            return error(modelAndView);
        }
        modelAndView.addObject("nick",nick);
        modelAndView.addObject("catagory",catagory);
        if(Constants.CATAGORY_DIARY.equals(catagory)){
            modelAndView.addObject("title",Constants.TITLE + "-" + Constants.SUB_TITLE_DIARY);
            modelAndView.addObject("pageSize",Constants.PAGE_SIZE_10);
        }
        if(Constants.CATAGORY_ALBUM.equals(catagory)){
            modelAndView.addObject("title",Constants.TITLE + "-" + Constants.SUB_TITLE_ALBUM);
            modelAndView.addObject("pageSize",Constants.PAGE_SIZE_9);
        }
        if(Constants.CATAGORY_BLOG.equals(catagory)){
            modelAndView.addObject("title",Constants.TITLE + "-" + Constants.SUB_TITLE_BLOG);
        }
        if(Constants.CATAGORY_SHARE.equals(catagory)){
            modelAndView.addObject("title",Constants.TITLE + "-" + Constants.SUB_TITLE_SHARE);
            modelAndView.addObject("pageSize",Constants.PAGE_SIZE_7);
        }
        if(Constants.CATAGORY_ABOUT.equals(catagory)){
            modelAndView.addObject("title",Constants.TITLE + "-" + Constants.SUB_TITLE_ABOUT);
            modelAndView.addObject("personAboutList",frontService.queryPersonAbout(nick));
        }
        modelAndView.setViewName("front/" + catagory);
        return modelAndView;
    }

    @RequestMapping(value = "/front/{nick}/album/{albumId}" ,method = RequestMethod.GET)
    public ModelAndView albumPhoto(@PathVariable("nick") String nick,@PathVariable("albumId") Integer albumId,ModelAndView modelAndView){
        if(!frontService.isValidateNick(nick)){
            return error(modelAndView);
        }
        modelAndView.addObject("catagory",Constants.CATAGORY_ALBUM);
        modelAndView.addObject("title",Constants.TITLE + "-" + Constants.SUB_TITLE_ALBUM + "-" + frontService.queryAlbumById(albumId).getAlbumName());
        modelAndView.addObject("pageSize",Constants.PAGE_SIZE_9);
//        modelAndView.addObject("albumPhotoList",frontService.queryAlbumPhoto(albumId,0,20));
        modelAndView.setViewName("front/albumPhoto");
        return modelAndView;
    }

    @RequestMapping(value = "/front/{nick}/ajax/{catagory}" ,method = RequestMethod.POST)
    @ResponseBody
    public List catagoryContent(@PathVariable("nick") String nick,@PathVariable("catagory") String catagory,Integer albumId,Integer start,Integer pageSize){
        if(!frontService.isValidateNick(nick)){
            return null;
        }
        if(Constants.CATAGORY_DIARY.equals(catagory)){
            return frontService.queryPersonDiary(nick,start,pageSize);
        }
        if(Constants.CATAGORY_ALBUM.equals(catagory)){
            return frontService.queryAlbum(nick,start,pageSize);
        }
        if(Constants.CATAGORY_ALBUM_PHOTO.equals(catagory)){
            return frontService.queryAlbumPhoto(albumId,start,pageSize);
        }
        if(Constants.CATAGORY_SHARE.equals(catagory)){
            return frontService.queryPersonShare(nick,start,pageSize);
        }
        return null;
    }

    @RequestMapping(value = "/front/{nick}/share/{shareId}" ,method = RequestMethod.GET)
    public ModelAndView shareContent(@PathVariable("nick") String nick,@PathVariable("shareId") Integer shareId,ModelAndView modelAndView){
        if(!frontService.isValidateNick(nick)){
            return error(modelAndView);
        }
        PersonShare personShare = frontService.queryPersonShareById(shareId);
        modelAndView.addObject("catagory",Constants.CATAGORY_SHARE);
        modelAndView.addObject("title",Constants.TITLE + "-" + Constants.SUB_TITLE_SHARE + "-" + personShare.getShareComment());
        modelAndView.addObject("personShare",personShare);
        modelAndView.setViewName("front/shareContent");
        return modelAndView;
    }
}