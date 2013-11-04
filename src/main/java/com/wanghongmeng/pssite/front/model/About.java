package com.wanghongmeng.pssite.front.model;

import java.io.Serializable;

/**
 * Created with IntelliJ IDEA.
 * User: hongmengwang
 * Date: 13-9-16
 * Time: 下午1:47
 * To change this template use File | Settings | File Templates.
 */
public class About implements Serializable {
    private int id;
    private int personId;
    private String item;
    private String content;
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

    public String getContent() {
        return content == null ? "" : content.trim();
    }

    public void setContent(String content) {
        this.content = content;
    }


    public String getItem() {
        return item == null ? "" : item.trim();
    }

    public void setItem(String item) {
        this.item = item;
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
        if (!(obj instanceof About)){
            return false;
        }
        About about = (About)obj;
        return about.getPersonId() == getPersonId() && about.getItem().equals(getItem());
    }

    @Override
    public int hashCode() {
        int result = 17;
        result = 37 * result + String.valueOf(getPersonId()).hashCode() ;
        result = 37 * result + getItem().hashCode();
        return result;
    }

    @Override
    public String toString() {
        StringBuilder str = new StringBuilder();
        str.append("About=[");
        str.append("personId=").append(getPersonId()).append(",");
        str.append("item=").append(getItem()).append(",");
        str.append("content=").append(getContent()).append(",");
        str.append("orderNum=").append(getOrderNum()).append(",");
        str.append("]");
        return str.toString();
    }
}
