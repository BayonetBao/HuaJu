package com.huaju.entity;

public class Door {
    private Integer doorid;

    private String doorname;

    public Door() {
    }

    public Integer getDoorid() {
        return doorid;
    }

    public void setDoorid(Integer doorid) {
        this.doorid = doorid;
    }

    public String getDoorname() {
        return doorname;
    }

    public void setDoorname(String doorname) {
        this.doorname = doorname == null ? null : doorname.trim();
    }
}