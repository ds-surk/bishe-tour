package com.bdqn.mapper.strategy;

import com.bdqn.pojo.strategy.NewsDetail;

public interface NewsDetailMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(NewsDetail record);

    int insertSelective(NewsDetail record);

    NewsDetail selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(NewsDetail record);

    int updateByPrimaryKey(NewsDetail record);
}