package com.bdqn.mapper.travel;

import com.bdqn.pojo.travel.area;

public interface areaMapper {
    int deleteByPrimaryKey(Integer areaid);

    int insert(area record);

    int insertSelective(area record);

    area selectByPrimaryKey(Integer areaid);
/*获得地区相应对象*/
    area selectByPrimaryKey1(String tfrom);
    
    int updateByPrimaryKeySelective(area record);

    int updateByPrimaryKey(area record);
}