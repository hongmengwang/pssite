package com.wanghongmeng.pssite.front.model;

import com.wanghongmeng.pssite.base.util.Constants;

import java.io.Serializable;
import java.lang.String;

/**
 * Created with IntelliJ IDEA.
 * User: wanghongmeng
 * Date: 10/16/13
 * Time: 10:02 PM
 * To change this template use File | Settings | File Templates.
 */
public class AlbumPhoto implements Serializable {
    private int id;
    private int albumId;
    private String picPath;
    private String comments;
    private String entryDate;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAlbumId() {
        return albumId;
    }

    public void setAlbumId(int albumId) {
        this.albumId = albumId;
    }

    public String getPicPath() {
        return picPath == null ? "" : Constants.URL_STATIC_PREFIX  + picPath.trim();
    }

    public void setPicPath(String picPath) {
        this.picPath = picPath;
    }

    public String getComments() {
        return comments == null ? "" : comments.trim();
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public String getEntryDate() {
        return entryDate == null ? "" : entryDate.trim().substring(0,entryDate.trim().length() - 2);
    }

    public void setEntryDate(String entryDate) {
        this.entryDate = entryDate;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this){
            return true;
        }
        if (!(obj instanceof AlbumPhoto)){
            return false;
        }
        AlbumPhoto albumPhoto = (AlbumPhoto)obj;
        return albumPhoto.getAlbumId() == getAlbumId()
               && albumPhoto.getPicPath().equals(getPicPath());
    }

    @Override
    public int hashCode() {
        int result = 17;
        result = 37 * result + String.valueOf(getAlbumId()).hashCode() ;
        result = 37 * result + getPicPath().hashCode();
        return result;
    }

    @Override
    public String toString() {
        StringBuilder str = new StringBuilder();
        str.append("AlbumPhoto=[");
        str.append("albumId=").append(getAlbumId()).append(",");
        str.append("picPath=").append(getPicPath()).append(",");
        str.append("comments=").append(getComments()).append(",");
        str.append("entryDate=").append(getEntryDate());
        str.append("]");
        return str.toString();
    }
}
