package com.huaju.entity;

public class Cta {
    private Integer ctaid;

    private String ctaimg;

    private String ctaphone;

    private Integer ctatime;

    private String education;

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
}