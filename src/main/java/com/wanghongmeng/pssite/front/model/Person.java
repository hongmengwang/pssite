package com.wanghongmeng.pssite.front.model;

import com.wanghongmeng.pssite.base.util.Constants;

/**
 * Created with IntelliJ IDEA.
 * User: hongmengwang
 * Date: 13-9-16
 * Time: 下午1:47
 * To change this template use File | Settings | File Templates.
 */
public class Person {
    private int id;
    private String name;
    private String nick;
    private String pic;
    private String comments;
    private String sex;
    private String marriage;
    private String school;
    private String company;
    private String about;
    private String birth;
    private int orderNum;

    public String getComments() {
        return comments == null ? "" : comments.trim();
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name == null ? "" : name.trim();
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNick() {
        return nick == null ? "" : nick.trim();
    }

    public void setNick(String nick) {
        this.nick = nick;
    }

    public int getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(int orderNum) {
        this.orderNum = orderNum;
    }

    public String getPic() {
        return pic == null ? "" : Constants.URL_STATIC_PREFIX +  pic.trim();
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public String getSex() {
        return sex == null ? "" : sex.trim();
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getMarriage() {
        return marriage == null ? "" : marriage.trim();
    }

    public void setMarriage(String marriage) {
        this.marriage = marriage;
    }

    public String getSchool() {
        return school == null ? "" : school.trim();
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public String getCompany() {
        return company == null ? "" : company.trim();
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getAbout() {
        return about == null ? "" : about.trim();
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public String getBirth() {
        return birth == null ? "" : birth.trim();
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this){
            return true;
        }
        if (!(obj instanceof Person)){
            return false;
        }
        Person person = (Person)obj;
        return person.getName().equals(getName()) && person.getNick().equals(getNick());
    }

    @Override
    public int hashCode() {
        int result = 17;
        result = 37 * result + getName().hashCode() ;
        result = 37 * result + getNick().hashCode();
        return result;
    }

    @Override
    public String toString() {
        StringBuilder str = new StringBuilder();
        str.append("Person=[");
        str.append("name=").append(getName()).append(",");
        str.append("nick=").append(getNick()).append(",");
        str.append("pic=").append(getPic()).append(",");
        str.append("comments=").append(getComments()).append(",");
        str.append("sex=").append(getSex()).append(",");
        str.append("marriage=").append(getMarriage()).append(",");
        str.append("school=").append(getSchool()).append(",");
        str.append("company=").append(getCompany()).append(",");
        str.append("about=").append(getAbout()).append(",");
        str.append("orderNum=").append(getOrderNum());
        str.append("]");
        return str.toString();
    }
}
