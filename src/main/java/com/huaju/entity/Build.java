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

    private String bpicture;

    private String tenement;

    private String btype;

    private String bline;

    private Integer comid;//开发商id

    private String character;

    private Double bperprice;

    private Double btotalprice;

    private Double acreage;

    private String condition;

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

    @Override
    public String toString() {
        return "Build{" +
                "buildingid=" + buildingid +
                ", building='" + building + '\'' +
                ", ctaid=" + ctaid +
                ", province='" + province + '\'' +
                ", city='" + city + '\'' +
                ", barea='" + barea + '\'' +
                ", bpicture='" + bpicture + '\'' +
                ", tenement='" + tenement + '\'' +
                ", btype='" + btype + '\'' +
                ", bline='" + bline + '\'' +
                ", comid=" + comid +
                ", character='" + character + '\'' +
                ", bperprice=" + bperprice +
                ", btotalprice=" + btotalprice +
                ", acreage=" + acreage +
                ", condition='" + condition + '\'' +
                ", starttime=" + starttime +
                ", endtime=" + endtime +
                ", genre='" + genre + '\'' +
                ", agelimit=" + agelimit +
                ", landtime=" + landtime +
                ", tencompany='" + tencompany + '\'' +
                ", tencost=" + tencost +
                ", tentype='" + tentype + '\'' +
                ", greenrate=" + greenrate +
                ", carport='" + carport + '\'' +
                ", cubage=" + cubage +
                ", fitment='" + fitment + '\'' +
                ", bsalestatus='" + bsalestatus + '\'' +
                ", buildType=" + buildType +
                '}';
    }

    public Build(Integer buildingid, String building, Integer ctaid, String province, String city, String barea, String bpicture, String tenement, String btype, String bline, Integer comid, String character, Double bperprice, Double btotalprice, Double acreage, String condition, Date starttime, Date endtime, String genre, Integer agelimit, Date landtime, String tencompany, Double tencost, String tentype, Double greenrate, String carport, Double cubage, String fitment, String bsalestatus, List<BuildType> buildType) {
        this.buildingid = buildingid;
        this.building = building;
        this.ctaid = ctaid;
        this.province = province;
        this.city = city;
        this.barea = barea;
        this.bpicture = bpicture;
        this.tenement = tenement;
        this.btype = btype;
        this.bline = bline;
        this.comid = comid;
        this.character = character;
        this.bperprice = bperprice;
        this.btotalprice = btotalprice;
        this.acreage = acreage;
        this.condition = condition;
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

    public List<BuildType> getBuildType() {
        return buildType;
    }

    public void setBuildType(List<BuildType> buildType) {
        this.buildType = buildType;
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
        this.building = building == null ? null : building.trim();
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
        this.province = province == null ? null : province.trim();
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city == null ? null : city.trim();
    }

    public String getBarea() {
        return barea;
    }

    public void setBarea(String barea) {
        this.barea = barea == null ? null : barea.trim();
    }

    public String getBpicture() {
        return bpicture;
    }

    public void setBpicture(String bpicture) {
        this.bpicture = bpicture == null ? null : bpicture.trim();
    }

    public String getTenement() {
        return tenement;
    }

    public void setTenement(String tenement) {
        this.tenement = tenement == null ? null : tenement.trim();
    }

    public String getBtype() {
        return btype;
    }

    public void setBtype(String btype) {
        this.btype = btype == null ? null : btype.trim();
    }

    public String getBline() {
        return bline;
    }

    public void setBline(String bline) {
        this.bline = bline == null ? null : bline.trim();
    }

    public Integer getComid() {
        return comid;
    }

    public void setComid(Integer comid) {
        this.comid = comid;
    }

    public String getCharacter() {
        return character;
    }

    public void setCharacter(String character) {
        this.character = character == null ? null : character.trim();
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

    public Double getAcreage() {
        return acreage;
    }

    public void setAcreage(Double acreage) {
        this.acreage = acreage;
    }

    public String getCondition() {
        return condition;
    }

    public void setCondition(String condition) {
        this.condition = condition == null ? null : condition.trim();
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
        this.genre = genre == null ? null : genre.trim();
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
        this.tencompany = tencompany == null ? null : tencompany.trim();
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
        this.tentype = tentype == null ? null : tentype.trim();
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
        this.carport = carport == null ? null : carport.trim();
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
        this.fitment = fitment == null ? null : fitment.trim();
    }

    public String getBsalestatus() {
        return bsalestatus;
    }

    public void setBsalestatus(String bsalestatus) {
        this.bsalestatus = bsalestatus == null ? null : bsalestatus.trim();
    }
}