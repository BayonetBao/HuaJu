package com.huaju.service;

import com.huaju.entity.EnvironmentImg;

import java.util.List;

public interface EnvirService {
    public List<EnvironmentImg> AllEnvironmentimg(int id);

    public void AddEnvironmentimg(EnvironmentImg environmentImg);

    public void deleteEnvironmentimg(int id);
}
