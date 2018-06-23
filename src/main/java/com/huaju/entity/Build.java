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

    private double lng;

    private double lat;

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

    private String advice;
    private String fitment;
    private Cta cta;
    private String bsalestatus;
    private List<BuildType> buildType;


    public Build() {
        super();
    }

    public String getAdvice() {
        return advice;
    }

    public void setAdvice(String advice) {
        this.advice = advice;
    }

    public double getLng() {
        return lng;
    }

    public void setLng(double lng) {
        this.lng = lng;
    }

    public double getLat() {
        return lat;
    }

    public void setLat(double lat) {
        this.lat = lat;
    }

    public Cta getCta() {
        return cta;
    }

    public void setCta(Cta cta) {
        this.cta = cta;
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Build build = (Build) o;

        if (Double.compare(build.lng, lng) != 0) return false;
        if (Double.compare(build.lat, lat) != 0) return false;
        if (buildingid != null ? !buildingid.equals(build.buildingid) : build.buildingid != null) return false;
        if (building != null ? !building.equals(build.building) : build.building != null) return false;
        if (ctaid != null ? !ctaid.equals(build.ctaid) : build.ctaid != null) return false;
        if (province != null ? !province.equals(build.province) : build.province != null) return false;
        if (city != null ? !city.equals(build.city) : build.city != null) return false;
        if (barea != null ? !barea.equals(build.barea) : build.barea != null) return false;
        if (bdetail != null ? !bdetail.equals(build.bdetail) : build.bdetail != null) return false;
        if (bpicture != null ? !bpicture.equals(build.bpicture) : build.bpicture != null) return false;
        if (tenement != null ? !tenement.equals(build.tenement) : build.tenement != null) return false;
        if (btype != null ? !btype.equals(build.btype) : build.btype != null) return false;
        if (bline != null ? !bline.equals(build.bline) : build.bline != null) return false;
        if (comid != null ? !comid.equals(build.comid) : build.comid != null) return false;
        if (charactere != null ? !charactere.equals(build.charactere) : build.charactere != null) return false;
        if (bperprice != null ? !bperprice.equals(build.bperprice) : build.bperprice != null) return false;
        if (btotalprice != null ? !btotalprice.equals(build.btotalprice) : build.btotalprice != null) return false;
        if (bmaxtotalprice != null ? !bmaxtotalprice.equals(build.bmaxtotalprice) : build.bmaxtotalprice != null)
            return false;
        if (acreage != null ? !acreage.equals(build.acreage) : build.acreage != null) return false;
        if (maxacreage != null ? !maxacreage.equals(build.maxacreage) : build.maxacreage != null) return false;
        if (conditions != null ? !conditions.equals(build.conditions) : build.conditions != null) return false;
        if (discounts != null ? !discounts.equals(build.discounts) : build.discounts != null) return false;
        if (starttime != null ? !starttime.equals(build.starttime) : build.starttime != null) return false;
        if (endtime != null ? !endtime.equals(build.endtime) : build.endtime != null) return false;
        if (genre != null ? !genre.equals(build.genre) : build.genre != null) return false;
        if (agelimit != null ? !agelimit.equals(build.agelimit) : build.agelimit != null) return false;
        if (landtime != null ? !landtime.equals(build.landtime) : build.landtime != null) return false;
        if (tencompany != null ? !tencompany.equals(build.tencompany) : build.tencompany != null) return false;
        if (tencost != null ? !tencost.equals(build.tencost) : build.tencost != null) return false;
        if (tentype != null ? !tentype.equals(build.tentype) : build.tentype != null) return false;
        if (greenrate != null ? !greenrate.equals(build.greenrate) : build.greenrate != null) return false;
        if (carport != null ? !carport.equals(build.carport) : build.carport != null) return false;
        if (cubage != null ? !cubage.equals(build.cubage) : build.cubage != null) return false;
        if (advice != null ? !advice.equals(build.advice) : build.advice != null) return false;
        if (fitment != null ? !fitment.equals(build.fitment) : build.fitment != null) return false;
        if (cta != null ? !cta.equals(build.cta) : build.cta != null) return false;
        if (bsalestatus != null ? !bsalestatus.equals(build.bsalestatus) : build.bsalestatus != null) return false;
        return buildType != null ? buildType.equals(build.buildType) : build.buildType == null;
    }

    @Override
    public int hashCode() {
        int result;
        long temp;
        result = buildingid != null ? buildingid.hashCode() : 0;
        result = 31 * result + (building != null ? building.hashCode() : 0);
        result = 31 * result + (ctaid != null ? ctaid.hashCode() : 0);
        result = 31 * result + (province != null ? province.hashCode() : 0);
        result = 31 * result + (city != null ? city.hashCode() : 0);
        result = 31 * result + (barea != null ? barea.hashCode() : 0);
        result = 31 * result + (bdetail != null ? bdetail.hashCode() : 0);
        temp = Double.doubleToLongBits(lng);
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        temp = Double.doubleToLongBits(lat);
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        result = 31 * result + (bpicture != null ? bpicture.hashCode() : 0);
        result = 31 * result + (tenement != null ? tenement.hashCode() : 0);
        result = 31 * result + (btype != null ? btype.hashCode() : 0);
        result = 31 * result + (bline != null ? bline.hashCode() : 0);
        result = 31 * result + (comid != null ? comid.hashCode() : 0);
        result = 31 * result + (charactere != null ? charactere.hashCode() : 0);
        result = 31 * result + (bperprice != null ? bperprice.hashCode() : 0);
        result = 31 * result + (btotalprice != null ? btotalprice.hashCode() : 0);
        result = 31 * result + (bmaxtotalprice != null ? bmaxtotalprice.hashCode() : 0);
        result = 31 * result + (acreage != null ? acreage.hashCode() : 0);
        result = 31 * result + (maxacreage != null ? maxacreage.hashCode() : 0);
        result = 31 * result + (conditions != null ? conditions.hashCode() : 0);
        result = 31 * result + (discounts != null ? discounts.hashCode() : 0);
        result = 31 * result + (starttime != null ? starttime.hashCode() : 0);
        result = 31 * result + (endtime != null ? endtime.hashCode() : 0);
        result = 31 * result + (genre != null ? genre.hashCode() : 0);
        result = 31 * result + (agelimit != null ? agelimit.hashCode() : 0);
        result = 31 * result + (landtime != null ? landtime.hashCode() : 0);
        result = 31 * result + (tencompany != null ? tencompany.hashCode() : 0);
        result = 31 * result + (tencost != null ? tencost.hashCode() : 0);
        result = 31 * result + (tentype != null ? tentype.hashCode() : 0);
        result = 31 * result + (greenrate != null ? greenrate.hashCode() : 0);
        result = 31 * result + (carport != null ? carport.hashCode() : 0);
        result = 31 * result + (cubage != null ? cubage.hashCode() : 0);
        result = 31 * result + (advice != null ? advice.hashCode() : 0);
        result = 31 * result + (fitment != null ? fitment.hashCode() : 0);
        result = 31 * result + (cta != null ? cta.hashCode() : 0);
        result = 31 * result + (bsalestatus != null ? bsalestatus.hashCode() : 0);
        result = 31 * result + (buildType != null ? buildType.hashCode() : 0);
        return result;
    }
}