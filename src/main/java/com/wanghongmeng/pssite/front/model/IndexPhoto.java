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
public class IndexPhoto implements Serializable {
    private int id;
    private String picPath;
    private int orderNum;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPicPath() {
        return picPath == null ? "" : picPath.trim();
    }

    public void setPicPath(String picPath) {
        this.picPath = picPath;
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
        if (!(obj instanceof IndexPhoto)){
            return false;
        }
        IndexPhoto indexPhoto = (IndexPhoto)obj;
        return indexPhoto.getPicPath().equals(getPicPath());
    }

    @Override
    public int hashCode() {
        int result = 17;
        result = 37 * result + getPicPath().hashCode();
        return result;
    }

    @Override
    public String toString() {
        StringBuilder str = new StringBuilder();
        str.append("IndexPhoto=[");
        str.append("picPath=").append(getPicPath()).append(",");
        str.append("orderNum=").append(getOrderNum());
        str.append("]");
        return str.toString();
    }
}
