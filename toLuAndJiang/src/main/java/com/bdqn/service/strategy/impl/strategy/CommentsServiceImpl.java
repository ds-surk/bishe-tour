package com.bdqn.service.strategy.impl.strategy;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bdqn.mapper.strategy.CommentsMapper;
import com.bdqn.pojo.strategy.Comments;
import com.bdqn.service.strategy.CommentsService;

@Service
@Transactional
public class CommentsServiceImpl implements CommentsService {
    //注入ProductMapper
    @Autowired
    private CommentsMapper commentsMapper;
    
    @Override
    public List<Comments> list() {
        
        return commentsMapper.list();
    }

    @Override
    public void save(Comments comments) {
        commentsMapper.save(comments);
    }
}