package com.bdqn.mapper.shopping;

import com.bdqn.pojo.shopping.Hotelorder;

public interface HotelorderMapper {

    Hotelorder selectByPrimaryKey(Integer uid,Integer hotelnumber);

}