package com.wanghongmeng.pssite.front.dao;

import com.wanghongmeng.pssite.front.model.*;
import com.wanghongmeng.pssite.front.persistence.FrontMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
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

//    @ReadThroughAssignCache(namespace = "frontDao",assignedKey = "queryPersonAbout",expiration = 86400)
    @Cacheable(value = "memcached",key = "'frontDao:queryPerson'")
    public List<Person> queryPerson(){
        return frontMapper.queryPerson();
    }

//    @ReadThroughSingleCache(namespac  e = "frontDao:queryPersonDiary",expiration = 86400)
//    public List<Diary> queryPersonDiary(@ParameterValueKeyProvider String nick){
    @Cacheable(value = "memcached",key = "'frontDao:queryPersonDiary:' + #nick")
    public List<PersonDiary> queryPersonDiary(String nick){
        return frontMapper.queryPersonDiary(nick);
    }

//    @ReadThroughAssignCache(namespace = "frontDao",assignedKey = "queryIndexPhoto",expiration = 86400)
    @Cacheable(value = "memcached",key = "'frontDao:queryIndexPhoto'")
    public List<IndexPhoto> queryIndexPhoto(){
        return frontMapper.queryIndexPhoto();
    }

//    @ReadThroughSingleCache(namespace = "frontDao:queryAlbum",expiration = 86400)
    @Cacheable(value = "memcached",key = "'frontDao:queryAlbum:' + #nick")
    public List<Album> queryAlbum(String nick){
        return frontMapper.queryAlbum(nick);
    }

//    @ReadThroughSingleCache(namespace = "frontDao:queryAlbumById",expiration = 86400)
    @Cacheable(value = "memcached",key = "'frontDao:queryAlbumById:' + #albumId")
    public Album queryAlbumById(int albumId){
        return frontMapper.queryAlbumById(albumId);
    }

//    @ReadThroughSingleCache(namespace = "frontDao:queryAlbumPhoto",expiration = 86400)
    @Cacheable(value = "memcached",key = "'frontDao:queryAlbumPhoto:' + #albumId")
    public List<AlbumPhoto> queryAlbumPhoto(int albumId){
        return frontMapper.queryAlbumPhoto(albumId);
    }

//    @ReadThroughSingleCache(namespace = "frontDao:queryPersonByNick",expiration = 86400)
    @Cacheable(value = "memcached",key = "'frontDao:queryPersonByNick:' + #nick")
    public Person queryPersonByNick(String nick){
        return frontMapper.queryPersonByNick(nick);
    }

//    @ReadThroughSingleCache(namespace = "frontDao:queryPersonAbout",expiration = 86400)
    @Cacheable(value = "memcached",key = "'frontDao:queryPersonAbout:' + #nick")
    public List<PersonAbout> queryPersonAbout(String nick){
        return frontMapper.queryPersonAbout(nick);
    }

    //    @ReadThroughSingleCache(namespace = "frontDao:queryPersonShare",expiration = 86400)
    @Cacheable(value = "memcached",key = "'frontDao:queryPersonShare:' + #nick")
    public List<PersonShare> queryPersonShare(String nick){
        return frontMapper.queryPersonShare(nick);
    }

    //    @ReadThroughSingleCache(namespace = "frontDao:queryPersonShareById",expiration = 86400)
    @Cacheable(value = "memcached",key = "'frontDao:queryPersonShareById:' + #shareId")
    public PersonShare queryPersonShareById(int shareId){
        return frontMapper.queryPersonShareById(shareId);
    }

}
