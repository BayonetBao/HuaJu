package com.huaju.entity;

public class BuildQueryPojo {
    private String province;
    private String city;
    private String district;
    private Integer typeid;//户型id
    private String  character;//楼盘特色
    private String genre;//楼盘类型 别墅 住宅
    private Double bTotalprice;//总价
    private Double 	bPerprice;//单价
    private Double acreage;//面积

    public BuildQueryPojo() {
        super();
    }

    public BuildQueryPojo(String province, String city, String district, Integer typeid, String character, String genre, Double bTotalprice, Double bPerprice, Double acreage) {
        this.province = province;
        this.city = city;
        this.district = district;
        this.typeid = typeid;
        this.character = character;
        this.genre = genre;
        this.bTotalprice = bTotalprice;
        this.bPerprice = bPerprice;
        this.acreage = acreage;
    }

    @Override
    public String toString() {
        return "BuildQueryPojo{" +
                "province='" + province + '\'' +
                ", city='" + city + '\'' +
                ", district='" + district + '\'' +
                ", typeid=" + typeid +
                ", character='" + character + '\'' +
                ", genre='" + genre + '\'' +
                ", bTotalprice=" + bTotalprice +
                ", bPerprice=" + bPerprice +
                ", acreage=" + acreage +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        BuildQueryPojo that = (BuildQueryPojo) o;

        if (province != null ? !province.equals(that.province) : that.province != null) return false;
        if (city != null ? !city.equals(that.city) : that.city != null) return false;
        if (district != null ? !district.equals(that.district) : that.district != null) return false;
        if (typeid != null ? !typeid.equals(that.typeid) : that.typeid != null) return false;
        if (character != null ? !character.equals(that.character) : that.character != null) return false;
        if (genre != null ? !genre.equals(that.genre) : that.genre != null) return false;
        if (bTotalprice != null ? !bTotalprice.equals(that.bTotalprice) : that.bTotalprice != null) return false;
        if (bPerprice != null ? !bPerprice.equals(that.bPerprice) : that.bPerprice != null) return false;
        return acreage != null ? acreage.equals(that.acreage) : that.acreage == null;
    }

    @Override
    public int hashCode() {
        int result = province != null ? province.hashCode() : 0;
        result = 31 * result + (city != null ? city.hashCode() : 0);
        result = 31 * result + (district != null ? district.hashCode() : 0);
        result = 31 * result + (typeid != null ? typeid.hashCode() : 0);
        result = 31 * result + (character != null ? character.hashCode() : 0);
        result = 31 * result + (genre != null ? genre.hashCode() : 0);
        result = 31 * result + (bTotalprice != null ? bTotalprice.hashCode() : 0);
        result = 31 * result + (bPerprice != null ? bPerprice.hashCode() : 0);
        result = 31 * result + (acreage != null ? acreage.hashCode() : 0);
        return result;
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

    public Double getbTotalprice() {
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
