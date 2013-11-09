package com.wanghongmeng.pssite.front.model;

import com.wanghongmeng.pssite.base.util.Constants;

import java.io.Serializable;

/**
 * Created with IntelliJ IDEA.
 * User: hongmengwang
 * Date: 13-9-16
 * Time: 下午1:47
 * To change this template use File | Settings | File Templates.
 */
public class PersonShare implements Serializable {
    private int id;
    private int personId;
    private String picPath;
    private String shareComment;
    private String shareLink;
    private String shareSource;
    private String entryDate;

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

    public String getPicPath() {
        return picPath == null ? "" : Constants.URL_STATIC_PREFIX + picPath.trim();
    }

    public void setPicPath(String picPath) {
        this.picPath = picPath;
    }

    public String getShareComment() {
        return shareComment == null ? "" : shareComment.trim();
    }

    public void setShareComment(String shareComment) {
        this.shareComment = shareComment;
    }

    public String getShareLink() {
        return shareLink == null ? "" : shareLink.trim();
    }

    public void setShareLink(String shareLink) {
        this.shareLink = shareLink;
    }

    public String getShareSource() {
        return shareSource == null ? "" : shareSource.trim();
    }

    public void setShareSource(String shareSource) {
        this.shareSource = shareSource;
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
        if (!(obj instanceof PersonShare)){
            return false;
        }
        PersonShare personShare = (PersonShare)obj;
        return personShare.getPersonId() == getPersonId()
               && personShare.getPicPath().equals(getPicPath())
               && personShare.getShareSource().equals(getShareSource());
    }

    @Override
    public int hashCode() {
        int result = 17;
        result = 37 * result + String.valueOf(getPersonId()).hashCode() ;
        result = 37 * result + getPicPath().hashCode();
        result = 37 * result + getShareSource().hashCode();
        return result;
    }

    @Override
    public String toString() {
        StringBuilder str = new StringBuilder();
        str.append("PersonShare=[");
        str.append("personId=").append(getPersonId()).append(",");
        str.append("shareComment=").append(getShareComment()).append(",");
        str.append("shareLink=").append(getShareLink()).append(",");
        str.append("shareSource=").append(getShareSource()).append(",");
        str.append("picPath=").append(getPicPath()).append(",");
        str.append("entryDate=").append(getEntryDate());
        str.append("]");
        return str.toString();
    }
}
