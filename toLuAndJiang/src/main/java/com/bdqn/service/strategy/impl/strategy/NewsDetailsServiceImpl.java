package com.bdqn.service.strategy.impl.strategy;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bdqn.mapper.strategy.NewsDetailMapper;
import com.bdqn.pojo.strategy.NewsDetail;
import com.bdqn.service.strategy.NewsDetailsService;

@Service
public class NewsDetailsServiceImpl implements NewsDetailsService {

	@Autowired
	NewsDetailMapper newsDetailMapper;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<NewsDetail> list() {
		// TODO Auto-generated method stub
		List list = new ArrayList<>();
		list.add(newsDetailMapper.selectByPrimaryKey(1));
		return list;
	}

}
