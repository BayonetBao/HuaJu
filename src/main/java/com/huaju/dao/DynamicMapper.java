package com.huaju.dao;

import com.huaju.entity.Build;
import com.huaju.entity.Dynamic;
import com.huaju.entity.DynamicQueryPojo;

import java.util.List;
import java.util.Map;

public interface DynamicMapper {
        public boolean insertDynamic(Dynamic dynamic);
        public boolean updateDynamic(Dynamic dynamic);
        public boolean deleteDynamic(Integer id);
        public int selectCountDynamic();
        public List<Dynamic> selectAllDynamicByQueryPojo(DynamicQueryPojo dynamicQueryPojo);
        public List<Build>   selectBuildingInDynamic(Integer comid);
        public  Dynamic selectDynamicById(Integer id);
}