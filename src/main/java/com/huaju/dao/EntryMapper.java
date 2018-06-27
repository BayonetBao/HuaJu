package com.huaju.dao;

import com.huaju.entity.Entry;

public interface EntryMapper {
    public boolean ActivityEntry(Entry entry);

    public Entry selectEntryInfo(Integer entid);
}