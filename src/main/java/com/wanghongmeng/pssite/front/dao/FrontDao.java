package com.wanghongmeng.pssite.front.dao;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.google.code.ssm.api.ParameterValueKeyProvider;
import com.google.code.ssm.api.ReadThroughAssignCache;
import com.google.code.ssm.api.ReadThroughSingleCache;
import com.google.code.ssm.api.ReturnValueKeyProvider;
import com.google.code.ssm.api.format.Serialization;
import com.google.code.ssm.api.format.SerializationType;
import com.google.code.ssm.transcoders.JsonTranscoder;
import com.wanghongmeng.pssite.front.model.*;
import com.wanghongmeng.pssite.front.persistence.FrontMapper;
import net.rubyeye.xmemcached.codec.MemcachedEncoder;
import net.rubyeye.xmemcached.transcoders.Transcoder;
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

    @ReadThroughAssignCache(namespace = "frontDao",assignedKey = "queryPerson",expiration = 86400)
    @Serialization(value = SerializationType.JSON)
    public List<Person> queryPerson(){
        return frontMapper.queryPerson();
    }

    @ReadThroughSingleCache(namespace = "frontDao:queryDiary",expiration = 86400)
    @Serialization(value = SerializationType.JSON)
    public List<Diary> queryDiary(@ParameterValueKeyProvider String nick){
        return frontMapper.queryDiary(nick);
    }

    @ReadThroughAssignCache(namespace = "frontDao",assignedKey = "queryPhoto",expiration = 86400)
    @Serialization(value = SerializationType.JSON)
    public List<IndexPhoto> queryPhoto(){
        return frontMapper.queryPhoto();
    }

    @ReadThroughSingleCache(namespace = "frontDao:queryAlbum",expiration = 86400)
    @Serialization(value = SerializationType.JSON)
    public List<Album> queryAlbum(@ParameterValueKeyProvider String nick){
        return frontMapper.queryAlbum(nick);
    }

    @ReadThroughSingleCache(namespace = "frontDao:queryAlbumById",expiration = 86400)
    @Serialization(value = SerializationType.JSON)
    public Album queryAlbumById(@ParameterValueKeyProvider int id){
        return frontMapper.queryAlbumById(id);
    }

    @ReadThroughSingleCache(namespace = "frontDao:queryAlbumPhoto",expiration = 86400)
    @Serialization(value = SerializationType.JSON)
    public List<AlbumPhoto> queryAlbumPhoto(@ParameterValueKeyProvider int albumId){
        return frontMapper.queryAlbumPhoto(albumId);
    }

    @ReadThroughSingleCache(namespace = "frontDao:queryPersonByNick",expiration = 86400)
    @Serialization(value = SerializationType.JSON)
    public Person queryPersonByNick(@ParameterValueKeyProvider String nick){
        return frontMapper.queryPersonByNick(nick);
    }

    @ReadThroughSingleCache(namespace = "frontDao:queryAbout",expiration = 86400)
    @Serialization(value = SerializationType.JSON)
    public List<About> queryAbout(@ParameterValueKeyProvider String nick){
        return frontMapper.queryAbout(nick);
    }
}
