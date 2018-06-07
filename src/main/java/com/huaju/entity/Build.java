package com.huaju.entity;

import java.util.Date;
import java.util.List;

public class Build {
    private Integer buildingid;

    private String building;

    private Integer ctaid;

    private String province;

    private String city;

    private String barea;

    private String bdetail;

    private String bpicture;

    private String tenement;

    private String btype;

    private String bline;

    private Integer comid;//开发商id

    private String charactere;

    private Double bperprice;

    private Double btotalprice;
    private  Double bmaxtotalprice;

    private Double acreage;
    private Double maxacreage;
    private String conditions;

    private String discounts;

    private Date starttime;

    private Date endtime;

    private String genre;

    private Integer agelimit;

    private Date landtime;

    private String tencompany;

    private Double tencost;

    private String tentype;

    private Double greenrate;

    private String carport;

    private Double cubage;

    private String fitment;

    private String bsalestatus;
    private List<BuildType> buildType;

    public Build() {
        super();
    }

    public Integer getBuildingid() {
        return buildingid;
    }

    public void setBuildingid(Integer buildingid) {
        this.buildingid = buildingid;
    }

    public String getBuilding() {
        return building;
    }

    public void setBuilding(String building) {
        this.building = building;
    }

    public Integer getCtaid() {
        return ctaid;
    }

    public void setCtaid(Integer ctaid) {
        this.ctaid = ctaid;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getBarea() {
        return barea;
    }

    public void setBarea(String barea) {
        this.barea = barea;
    }

    public String getBdetail() {
        return bdetail;
    }

    public void setBdetail(String bdetail) {
        this.bdetail = bdetail;
    }

    public String getBpicture() {
        return bpicture;
    }

    public void setBpicture(String bpicture) {
        this.bpicture = bpicture;
    }

    public String getTenement() {
        return tenement;
    }

    public void setTenement(String tenement) {
        this.tenement = tenement;
    }

    public String getBtype() {
        return btype;
    }

    public void setBtype(String btype) {
        this.btype = btype;
    }

    public String getBline() {
        return bline;
    }

    public void setBline(String bline) {
        this.bline = bline;
    }

    public Integer getComid() {
        return comid;
    }

    public void setComid(Integer comid) {
        this.comid = comid;
    }

    public String getCharactere() {
        return charactere;
    }

    public void setCharactere(String charactere) {
        this.charactere = charactere;
    }

    public Double getBperprice() {
        return bperprice;
    }

    public void setBperprice(Double bperprice) {
        this.bperprice = bperprice;
    }

    public Double getBtotalprice() {
        return btotalprice;
    }

    public void setBtotalprice(Double btotalprice) {
        this.btotalprice = btotalprice;
    }

    public Double getBmaxtotalprice() {
        return bmaxtotalprice;
    }

    public void setBmaxtotalprice(Double bmaxtotalprice) {
        this.bmaxtotalprice = bmaxtotalprice;
    }

    public Double getAcreage() {
        return acreage;
    }

    public void setAcreage(Double acreage) {
        this.acreage = acreage;
    }

    public Double getMaxacreage() {
        return maxacreage;
    }

    public void setMaxacreage(Double maxacreage) {
        this.maxacreage = maxacreage;
    }

    public String getConditions() {
        return conditions;
    }

    public void setConditions(String conditions) {
        this.conditions = conditions;
    }

    public String getDiscounts() {
        return discounts;
    }

    public void setDiscounts(String discounts) {
        this.discounts = discounts;
    }

    public Date getStarttime() {
        return starttime;
    }

    public void setStarttime(Date starttime) {
        this.starttime = starttime;
    }

    public Date getEndtime() {
        return endtime;
    }

    public void setEndtime(Date endtime) {
        this.endtime = endtime;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public Integer getAgelimit() {
        return agelimit;
    }

    public void setAgelimit(Integer agelimit) {
        this.agelimit = agelimit;
    }

    public Date getLandtime() {
        return landtime;
    }

    public void setLandtime(Date landtime) {
        this.landtime = landtime;
    }

    public String getTencompany() {
        return tencompany;
    }

    public void setTencompany(String tencompany) {
        this.tencompany = tencompany;
    }

    public Double getTencost() {
        return tencost;
    }

    public void setTencost(Double tencost) {
        this.tencost = tencost;
    }

    public String getTentype() {
        return tentype;
    }

    public void setTentype(String tentype) {
        this.tentype = tentype;
    }

    public Double getGreenrate() {
        return greenrate;
    }

    public void setGreenrate(Double greenrate) {
        this.greenrate = greenrate;
    }

    public String getCarport() {
        return carport;
    }

    public void setCarport(String carport) {
        this.carport = carport;
    }

    public Double getCubage() {
        return cubage;
    }

    public void setCubage(Double cubage) {
        this.cubage = cubage;
    }

    public String getFitment() {
        return fitment;
    }

    public void setFitment(String fitment) {
        this.fitment = fitment;
    }

    public String getBsalestatus() {
        return bsalestatus;
    }

    public void setBsalestatus(String bsalestatus) {
        this.bsalestatus = bsalestatus;
    }

    public List<BuildType> getBuildType() {
        return buildType;
    }

    public void setBuildType(List<BuildType> buildType) {
        this.buildType = buildType;
    }

    public Build(String building, Integer ctaid, String province, String city, String barea, String bdetail, String bpicture, String tenement, String btype, String bline, Integer comid, String charactere, Double bperprice, Double btotalprice, Double bmaxtotalprice, Double acreage, Double maxacreage, String conditions, String discounts, Date starttime, Date endtime, String genre, Integer agelimit, Date landtime, String tencompany, Double tencost, String tentype, Double greenrate, String carport, Double cubage, String fitment, String bsalestatus, List<BuildType> buildType) {

        this.building = building;
        this.ctaid = ctaid;
        this.province = province;
        this.city = city;
        this.barea = barea;
        this.bdetail = bdetail;
        this.bpicture = bpicture;
        this.tenement = tenement;
        this.btype = btype;
        this.bline = bline;
        this.comid = comid;
        this.charactere = charactere;
        this.bperprice = bperprice;
        this.btotalprice = btotalprice;
        this.bmaxtotalprice = bmaxtotalprice;
        this.acreage = acreage;
        this.maxacreage = maxacreage;
        this.conditions = conditions;
        this.discounts = discounts;
        this.starttime = starttime;
        this.endtime = endtime;
        this.genre = genre;
        this.agelimit = agelimit;
        this.landtime = landtime;
        this.tencompany = tencompany;
        this.tencost = tencost;
        this.tentype = tentype;
        this.greenrate = greenrate;
        this.carport = carport;
        this.cubage = cubage;
        this.fitment = fitment;
        this.bsalestatus = bsalestatus;
        this.buildType = buildType;
    }

    public Build(Integer buildingid, String building, Integer ctaid, String province, String city, String barea, String bdetail, String bpicture, String tenement, String btype, String bline, Integer comid, String charactere, Double bperprice, Double btotalprice, Double bmaxtotalprice, Double acreage, Double maxacreage, String conditions, String discounts, Date starttime, Date endtime, String genre, Integer agelimit, Date landtime, String tencompany, Double tencost, String tentype, Double greenrate, String carport, Double cubage, String fitment, String bsalestatus, List<BuildType> buildType) {
        this.buildingid = buildingid;
        this.building = building;
        this.ctaid = ctaid;
        this.province = province;
        this.city = city;
        this.barea = barea;
        this.bdetail = bdetail;
        this.bpicture = bpicture;
        this.tenement = tenement;
        this.btype = btype;
        this.bline = bline;
        this.comid = comid;
        this.charactere = charactere;
        this.bperprice = bperprice;
        this.btotalprice = btotalprice;
        this.bmaxtotalprice = bmaxtotalprice;
        this.acreage = acreage;
        this.maxacreage = maxacreage;
        this.conditions = conditions;
        this.discounts = discounts;
        this.starttime = starttime;
        this.endtime = endtime;
        this.genre = genre;
        this.agelimit = agelimit;
        this.landtime = landtime;
        this.tencompany = tencompany;
        this.tencost = tencost;
        this.tentype = tentype;
        this.greenrate = greenrate;
        this.carport = carport;
        this.cubage = cubage;
        this.fitment = fitment;
        this.bsalestatus = bsalestatus;
        this.buildType = buildType;
    }
}