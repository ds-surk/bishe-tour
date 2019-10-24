package com.bdqn.service.strategy;

import java.util.List;

import com.bdqn.pojo.strategy.Comments;

public interface CommentsService {

    List<Comments> list();

    void save(Comments comments);

}
