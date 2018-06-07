package com.huaju.dao;

import com.huaju.entity.EnvironmentImg;

import java.util.List;

public interface EnvironmentImgMapper {
    public List<EnvironmentImg> AllEnvironmentimg(int id);

    public void AddEnvironmentimg(EnvironmentImg environmentImg);

    public void deleteEnvironmentimg(int id);

}