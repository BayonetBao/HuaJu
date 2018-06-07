package com.huaju.dao;

import com.huaju.entity.Cta;

import java.util.List;

public interface CtaMapper {
    public List<Cta> AllCta();

    public Cta CtaByActivity(int ctaid);
}