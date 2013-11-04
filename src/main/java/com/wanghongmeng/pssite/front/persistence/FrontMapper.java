package com.wanghongmeng.pssite.front.persistence;

import com.wanghongmeng.pssite.front.model.*;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: hongmengwang
 * Date: 13-7-29
 * Time: 上午11:17
 * To change this template use File | Settings | File Templates.
 */
public interface FrontMapper {

    List<Person> queryPerson();

    List<PersonDiary> queryPersonDiary(@Param("nick") String nick);

    List<PersonAbout> queryPersonAbout(@Param("nick") String nick);

    Person queryPersonByNick(@Param("nick") String nick);

    List<IndexPhoto> queryIndexPhoto();

    List<Album> queryAlbum(@Param("nick") String nick);

    Album queryAlbumById(@Param("id") int id);

    List<AlbumPhoto> queryAlbumPhoto(@Param("albumId") int albumId);
}
