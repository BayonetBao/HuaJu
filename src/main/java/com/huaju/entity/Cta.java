package com.huaju.entity;

public class Cta {
    private Integer ctaid;
    private String ctarelname;//真实姓名
    private String ctapassword;
    private String ctaimg;
    private String ctaphone;
    private Integer ctatime;
    private String education;
    private String ctaname;//员工号
    private String intro;
    private String remark;//备用
    private  String school;
    private String charactere;
    private Integer comid;//开发商id
    private String qq;





    @Override
    public String toString() {
        return "Cta{" +
                "ctaid=" + ctaid +
                ", ctarelname='" + ctarelname + '\'' +
                ", ctapassword='" + ctapassword + '\'' +
                ", ctaimg='" + ctaimg + '\'' +
                ", ctaphone='" + ctaphone + '\'' +
                ", ctatime=" + ctatime +
                ", education='" + education + '\'' +
                ", ctaname='" + ctaname + '\'' +
                ", intro='" + intro + '\'' +
                ", remark='" + remark + '\'' +
                ", school='" + school + '\'' +
                ", charactere='" + charactere + '\'' +
                '}';
    }

    public Cta() {
        super();
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public String getCharactere() {
        return charactere;
    }

    public void setCharactere(String charactere) {
        this.charactere = charactere;
    }

    public String getCtarelname() {
        return ctarelname;
    }

    public void setCtarelname(String ctarelname) {
        this.ctarelname = ctarelname;
    }

    public String getCtapassword() {
        return ctapassword;
    }

    public void setCtapassword(String ctapassword) {
        this.ctapassword = ctapassword;
    }
    public String getCtaname() {
        return ctaname;
    }

    public void setCtaname(String ctaname) {
        this.ctaname = ctaname;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Integer getCtaid() {
        return ctaid;
    }

    public void setCtaid(Integer ctaid) {
        this.ctaid = ctaid;
    }

    public String getCtaimg() {
        return ctaimg;
    }

    public void setCtaimg(String ctaimg) {
        this.ctaimg = ctaimg == null ? null : ctaimg.trim();
    }

    public String getCtaphone() {
        return ctaphone;
    }

    public void setCtaphone(String ctaphone) {
        this.ctaphone = ctaphone == null ? null : ctaphone.trim();
    }

    public Integer getCtatime() {
        return ctatime;
    }

    public void setCtatime(Integer ctatime) {
        this.ctatime = ctatime;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education == null ? null : education.trim();
    }

    public Integer getComid() {
        return comid;
    }

    public void setComid(Integer comid) {
        this.comid = comid;
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }


}