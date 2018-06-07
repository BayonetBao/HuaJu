package com.huaju.service;

import com.huaju.entity.Buildimg;

import java.util.List;

public interface BuildimgService {
    public List<Buildimg> AllBuildimg(int id);

    public void AddBuildimg(Buildimg buildimg);

    public void deleteBuildimg(int id);
}
