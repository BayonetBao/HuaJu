package com.huaju.service;

import com.huaju.dao.EntryMapper;
import com.huaju.entity.Entry;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EntryServiceImpl implements EntryService {
    @Autowired
    private EntryMapper entryMapper;
    @Override
    public boolean ActivityEntry(Entry entry) {
        return entryMapper.ActivityEntry(entry);
    }

    @Override
    public Entry selectEntryInfo(Integer entid) {
        return entryMapper.selectEntryInfo(entid);
    }
}
