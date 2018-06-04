package com.huaju.dao;

import com.huaju.entity.Dynamic;

import java.util.List;
import java.util.Map;

public interface DynamicMapper {
        public boolean insertDynamic(Dynamic dynamic);
        public boolean updateDynamic(Dynamic dynamic);
        public boolean deleteDynamic(Integer id);
        public List<Dynamic> selectAllDynamic();
        public int selectCountDynamic();
        public List<Dynamic> selectDynamicByBuild(Integer id);
}