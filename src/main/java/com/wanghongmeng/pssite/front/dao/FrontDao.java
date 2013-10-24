package com.wanghongmeng.pssite.front.dao;

import com.wanghongmeng.pssite.front.model.*;
import com.wanghongmeng.pssite.front.persistence.FrontMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: hongmengwang
 * Date: 13-7-31
 * Time: 上午11:20
 * To change this template use File | Settings | File Templates.
 */
@Repository
public class FrontDao {
    @Autowired
    private FrontMapper frontMapper;

    public List<Person> queryPerson(){
        return frontMapper.queryPerson();
    }

    public List<Diary> queryDiary(String nick){
        return frontMapper.queryDiary(nick);
    }

    public List<IndexPhoto> queryPhoto(){
        return frontMapper.queryPhoto();
    }

    public List<Album> queryAlbum(String nick){
        return frontMapper.queryAlbum(nick);
    }

    public List<AlbumPhoto> queryAlbumPhoto(int albumId){
        return frontMapper.queryAlbumPhoto(albumId);
    }

    public Person queryPersonByNick(String nick){
        return frontMapper.queryPersonByNick(nick);
    }

    public List<About> queryAbout(String nick){
        return frontMapper.queryAbout(nick);
    }
}
