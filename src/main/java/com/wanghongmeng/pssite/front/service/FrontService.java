package com.wanghongmeng.pssite.front.service;

import com.wanghongmeng.pssite.base.util.Constants;
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
        if(start < 0){
            return null;
        }
        if(Constants.PAGE_SIZE_10 != pageSize){
            return null;
        }
        return frontDao.queryPersonDiary(nick,start,pageSize);
    }

    public List<IndexPhoto> queryIndexPhoto(){
        return frontDao.queryIndexPhoto();
    }

    public List<Album> queryAlbum(String nick,int start,int pageSize){
        if(start < 0){
            return null;
        }
        if(Constants.PAGE_SIZE_9 != pageSize){
            return null;
        }
        return frontDao.queryAlbum(nick,start,pageSize);
    }

    public Album queryAlbumById(int albumId){
        Album album = frontDao.queryAlbumById(albumId);
        if(null == album){
            album = new Album();
        }
        return album;
    }

    public List<AlbumPhoto> queryAlbumPhoto(int albumId,int start,int pageSize){
        if(start < 0){
            return null;
        }
        if(Constants.PAGE_SIZE_9 != pageSize){
            return null;
        }
        return frontDao.queryAlbumPhoto(albumId,start,pageSize);
    }

    public Person queryPersonByNick(String nick){
        return frontDao.queryPersonByNick(nick);
    }

    public List<PersonAbout> queryPersonAbout(String nick){
        return frontDao.queryPersonAbout(nick);
    }

    public List<PersonShare> queryPersonShare(String nick,int start,int pageSize){
        if(start < 0){
            return null;
        }
        if(Constants.PAGE_SIZE_7 != pageSize){
            return null;
        }
        return frontDao.queryPersonShare(nick,start,pageSize);
    }

    public PersonShare queryPersonShareById(int shareId){
        return frontDao.queryPersonShareById(shareId);
    }

    public boolean isValidateNick(String nick){
        List<Person> personList = frontDao.queryPerson();
        for(Person p : personList){
            if(p.getNick().equals(nick)){
                return true;
            }
        }
        return false;
    }
}
