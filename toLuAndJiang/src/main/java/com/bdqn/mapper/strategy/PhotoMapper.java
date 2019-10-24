package com.bdqn.mapper.strategy;

import com.bdqn.pojo.strategy.Photo;

public interface PhotoMapper {
	
	int deleteByPrimaryKey(Integer id);

    int insert(Photo record);

    int insertSelective(Photo record);

    Photo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Photo record);

    int updateByPrimaryKey(Photo record);

}
