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

//    @ReadThroughAssignCache(namespace = "frontDao",assignedKey = "queryPerson",expiration = 86400)
    @Cacheable(value = "memcached",key = "'frontDao:queryPerson'")
    public List<Person> queryPerson(){
        return frontMapper.queryPerson();
    }

//    @ReadThroughSingleCache(namespace = "frontDao:queryDiary",expiration = 86400)
//    public List<Diary> queryDiary(@ParameterValueKeyProvider String nick){
    @Cacheable(value = "memcached",key = "'frontDao:queryDiary:' + #nick")
    public List<Diary> queryDiary(String nick){
        return frontMapper.queryDiary(nick);
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
    @Cacheable(value = "memcached",key = "'frontDao:queryAlbumById:' + #id")
    public Album queryAlbumById(int id){
        return frontMapper.queryAlbumById(id);
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

//    @ReadThroughSingleCache(namespace = "frontDao:queryMe",expiration = 86400)
    @Cacheable(value = "memcached",key = "'frontDao:queryMe:' + #nick")
    public List<About> queryMe(String nick){
        return frontMapper.queryMe(nick);
    }
}
