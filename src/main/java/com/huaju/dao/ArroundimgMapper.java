package com.huaju.dao;

import com.huaju.entity.Arroundimg;

import java.util.List;

public interface ArroundimgMapper {

    public List<Arroundimg> AllArroundimg(int id);

    public void AddArroundimg(Arroundimg arroundimg);

    public void deleteArroundimg(int id);

}