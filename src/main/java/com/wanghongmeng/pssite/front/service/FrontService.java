package com.wanghongmeng.pssite.front.service;

import com.wanghongmeng.pssite.front.dao.FrontDao;
import com.wanghongmeng.pssite.front.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: hongmengwang
 * Date: 13-8-6
 * Time: 下午2:10
 * To change this template use File | Settings | File Templates.
 */
@Service
public class FrontService {
    @Autowired
    private FrontDao frontDao;

    public List<Person> queryPerson(){
        return frontDao.queryPerson();
    }

    public List<PersonDiary> queryPersonDiary(String nick,int start,int pageSize){
        return frontDao.queryPersonDiary(nick,start,pageSize);
    }

    public List<IndexPhoto> queryIndexPhoto(){
        return frontDao.queryIndexPhoto();
    }

    public List<Album> queryAlbum(String nick,int start,int pageSize){
        return frontDao.queryAlbum(nick,start,pageSize);
    }

    public Album queryAlbumById(int albumId){
        return frontDao.queryAlbumById(albumId);
    }

    public List<AlbumPhoto> queryAlbumPhoto(int albumId,int start,int pageSize){
        return frontDao.queryAlbumPhoto(albumId,start,pageSize);
    }

    public Person queryPersonByNick(String nick){
        return frontDao.queryPersonByNick(nick);
    }

    public List<PersonAbout> queryPersonAbout(String nick){
        return frontDao.queryPersonAbout(nick);
    }

    public List<PersonShare> queryPersonShare(String nick,int start,int pageSize){
        return frontDao.queryPersonShare(nick,start,pageSize);
    }

    public PersonShare queryPersonShareById(int shareId){
        return frontDao.queryPersonShareById(shareId);

    }
}
