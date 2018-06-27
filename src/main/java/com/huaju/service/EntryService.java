package com.huaju.service;

import com.huaju.entity.Entry;

public interface EntryService {
    public boolean ActivityEntry(Entry entry);

    public Entry selectEntryInfo(Integer entid);
}
