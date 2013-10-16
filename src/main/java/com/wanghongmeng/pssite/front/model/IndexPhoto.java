package com.wanghongmeng.pssite.front.model;

/**
 * Created with IntelliJ IDEA.
 * User: hongmengwang
 * Date: 13-9-16
 * Time: 下午1:47
 * To change this template use File | Settings | File Templates.
 */
public class IndexPhoto {
    private int id;
    private String pic;
    private int orderNum;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPic() {
        return pic == null ? "" : pic.trim();
    }

    public void setPic(String pic) {
        this.pic = pic;
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
        return indexPhoto.getPic().equals(getPic());
    }

    @Override
    public int hashCode() {
        int result = 17;
        result = 37 * result + getPic().hashCode();
        return result;
    }

    @Override
    public String toString() {
        StringBuilder str = new StringBuilder();
        str.append("IndexPhoto=[");
        str.append("pic=").append(getPic()).append(",");
        str.append("orderNum=").append(getOrderNum());
        str.append("]");
        return str.toString();
    }
}
