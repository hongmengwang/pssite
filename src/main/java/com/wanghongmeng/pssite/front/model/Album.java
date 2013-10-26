package com.wanghongmeng.pssite.front.model;

import com.wanghongmeng.pssite.base.Constants;

/**
 * Created with IntelliJ IDEA.
 * User: wanghongmeng
 * Date: 10/16/13
 * Time: 10:02 PM
 * To change this template use File | Settings | File Templates.
 */
public class Album {
    private int id;
    private int personId;
    private String albumName;
    private String albumCover;
    private String entryDate;
    private int orderNum;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPersonId() {
        return personId;
    }

    public void setPersonId(int personId) {
        this.personId = personId;
    }

    public String getAlbumName() {
        return albumName == null ? "" : albumName.trim();
    }

    public void setAlbumName(String albumName) {
        this.albumName = albumName;
    }

    public String getAlbumCover() {
        return albumCover == null ? "" : Constants.URL_STATIC_PREFIX + albumCover.trim();
    }

    public void setAlbumCover(String albumCover) {
        this.albumCover = albumCover;
    }

    public String getEntryDate() {
        return entryDate == null ? "" : entryDate.trim().substring(0,entryDate.trim().length() - 2);
    }

    public void setEntryDate(String entryDate) {
        this.entryDate = entryDate;
    }

    public int getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(int orderNum) {
        this.orderNum = orderNum;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this){
            return true;
        }
        if (!(obj instanceof Album)){
            return false;
        }
        Album album = (Album)obj;
        return album.getPersonId() == getPersonId()
               && album.getAlbumName().equals(getAlbumName())
               && album.getAlbumCover().equals(getAlbumCover());
    }

    @Override
    public int hashCode() {
        int result = 17;
        result = 37 * result + String.valueOf(getPersonId()).hashCode() ;
        result = 37 * result + getAlbumName().hashCode();
        result = 37 * result + getAlbumCover().hashCode();
        return result;
    }

    @Override
    public String toString() {
        StringBuilder str = new StringBuilder();
        str.append("Album=[");
        str.append("personId=").append(getPersonId()).append(",");
        str.append("albumName=").append(getAlbumName()).append(",");
        str.append("albumCover=").append(getAlbumCover()).append(",");
        str.append("entryDate=").append(getEntryDate()).append(".");
        str.append("orderNum=").append(getOrderNum());
        str.append("]");
        return str.toString();
    }
}
