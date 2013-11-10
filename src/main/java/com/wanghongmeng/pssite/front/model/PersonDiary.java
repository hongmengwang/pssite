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
public class PersonDiary implements Serializable {
    private int id;
    private int personId;
    private String content;
    private String picPath;
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

    public String getContent() {
        return content == null ? "" : content.trim();
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getPicPath() {
        return picPath == null ? "" : picPath.trim();
    }

    public void setPicPath(String picPath) {
        this.picPath = picPath;
    }

    public String getEntryDate() {
        return entryDate == null ? "" : entryDate.trim();
    }

    public void setEntryDate(String entryDate) {
        this.entryDate = entryDate;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this){
            return true;
        }
        if (!(obj instanceof PersonDiary)){
            return false;
        }
        PersonDiary personDiary = (PersonDiary)obj;
        return personDiary.getPersonId() == getPersonId()
               && personDiary.getContent().equals(getContent())
               && personDiary.getPicPath().equals(getPicPath());
    }

    @Override
    public int hashCode() {
        int result = 17;
        result = 37 * result + String.valueOf(getPersonId()).hashCode() ;
        result = 37 * result + getContent().hashCode();
        result = 37 * result + getPicPath().hashCode();
        return result;
    }

    @Override
    public String toString() {
        StringBuilder str = new StringBuilder();
        str.append("PersonDiary=[");
        str.append("personId=").append(getPersonId()).append(",");
        str.append("content=").append(getContent()).append(",");
        str.append("picPath=").append(getPicPath()).append(",");
        str.append("entryDate=").append(getEntryDate());
        str.append("]");
        return str.toString();
    }
}
