package com.bdqn.mapper.strategy;

import java.util.List;

import com.bdqn.pojo.strategy.Comments;

public interface CommentsMapper {
    //保存评论
    void save(Comments comments);
    //查询评论
    List<Comments> list();
}