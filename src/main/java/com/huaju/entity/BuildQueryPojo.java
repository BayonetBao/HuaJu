package com.huaju.entity;

public class BuildQueryPojo {
    private String province;
    private String city;
    private String district;
    private Integer typeid;//户型id
    private String  character;//楼盘特色
    private String genre;//楼盘类型 别墅 住宅
    private Double bTotalprice;//总价
    private Double bMaxTotalprice;//最高总价
    private Double 	bPerprice;//最低单价
    private Double bMaxprice;//最高单价
    private Double acreage;//面积
    private Double maxAcreage;//最大面积
    private Integer comid;//开发商id
    private String isonsale;//优惠

    public String getIsonsale() {
        return isonsale;
    }

    public void setIsonsale(String isonsale) {
        this.isonsale = isonsale;
    }

    public BuildQueryPojo(String province, String city, String district, Integer typeid, String character, String genre, Double bTotalprice, Double bMaxTotalprice, Double bPerprice, Double bMaxprice, Double acreage, Double maxAcreage, Integer comid) {
        this.province = province;
        this.city = city;
        this.district = district;
        this.typeid = typeid;
        this.character = character;
        this.genre = genre;
        this.bTotalprice = bTotalprice;
        this.bMaxTotalprice = bMaxTotalprice;
        this.bPerprice = bPerprice;
        this.bMaxprice = bMaxprice;
        this.acreage = acreage;
        this.maxAcreage = maxAcreage;
        this.comid = comid;
    }

    public Double getbTotalprice() {
        return bTotalprice;
    }

    public Integer getComid() {
        return comid;
    }

    public Double getMaxAcreage() {
        return maxAcreage;
    }

    public void setMaxAcreage(Double maxAcreage) {
        this.maxAcreage = maxAcreage;
    }

    public Double getbMaxprice() {
        return bMaxprice;
    }

    public void setbMaxprice(Double bMaxprice) {
        this.bMaxprice = bMaxprice;
    }

    public Double getbMaxTotalprice() {
        return bMaxTotalprice;
    }

    public void setbMaxTotalprice(Double bMaxTotalprice) {
        this.bMaxTotalprice = bMaxTotalprice;
    }

    public void setComid(Integer comid) {
        this.comid = comid;
    }

    public BuildQueryPojo() {
        super();
    }

    public Double getbMaxpricr() {
        return bMaxprice;
    }

    public void setbMaxpricr(Double bMaxpricr) {
        this.bMaxprice = bMaxpricr;
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

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public Integer getTypeid() {
        return typeid;
    }

    public void setTypeid(Integer typeid) {
        this.typeid = typeid;
    }

    public String getCharacter() {
        return character;
    }

    public void setCharacter(String character) {
        this.character = character;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public Double getbTotalprice(Double aDouble) {
        return bTotalprice;
    }

    public void setbTotalprice(Double bTotalprice) {
        this.bTotalprice = bTotalprice;
    }

    public Double getbPerprice() {
        return bPerprice;
    }

    public void setbPerprice(Double bPerprice) {
        this.bPerprice = bPerprice;
    }

    public Double getAcreage() {
        return acreage;
    }

    public void setAcreage(Double acreage) {
        this.acreage = acreage;
    }
}
