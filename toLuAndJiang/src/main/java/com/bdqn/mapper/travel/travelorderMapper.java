package com.bdqn.mapper.travel;


import com.bdqn.pojo.travel.travelorder;

public interface travelorderMapper {
    int deleteByPrimaryKey(Integer travelnumber);

    int insert(travelorder record);

    int insertSelective(travelorder record);

    travelorder selectByPrimaryKey(Integer travelnumber);

    int updateByPrimaryKeySelective(travelorder record);

    int updateByPrimaryKey(travelorder record);
    
    travelorder selectByPrimaryKey(Integer uid,Integer travelnumber);
}