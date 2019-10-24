package com.bdqn.mapper.shopping;

import java.util.List;

import com.bdqn.pojo.shopping.Shoppingcart;

public interface ShoppingcartMapper {
    int deleteByPrimaryKey(Integer shoppingnumber);

    int insert(Shoppingcart record);

    int insertSelective(Shoppingcart record);

    List<Shoppingcart> selectByPrimaryKey(Integer uid);

    int updateByPrimaryKeySelective(Shoppingcart record);

    int updateByPrimaryKey(Shoppingcart record);
}