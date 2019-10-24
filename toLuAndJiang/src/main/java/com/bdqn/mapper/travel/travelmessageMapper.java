package com.bdqn.mapper.travel;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bdqn.pojo.travel.travelmessage;



public interface travelmessageMapper {
    int deleteByPrimaryKey(Integer travelid);

    int insert(travelmessage record);

    int insertSelective(travelmessage record);

    travelmessage selectByPrimaryKey(Integer travelid);
    
/*    获得出境旅游项目对象*/
    public List<travelmessage> getTravelMessageList();
    
    /*    获得国内旅游项目对象*/
    public List<travelmessage> getDTravelMessageList();
/*    获得主题旅游对象*/
    public List<travelmessage> getThemeTravelList();
/*        获得旅游城市坐标
    public List<travelmessage> getCountryList(@Param("TFrom")String TFrom);*/
    
/*    获得旅游景点坐标*/
    public List<travelmessage> getAttractions();
  /*  搜索*/
    public List<travelmessage> getTravelList(@Param(value="travelname")String travelname,
			@Param(value="price")Integer price,
			@Param(value="supplier")String supplier,
			@Param(value="country")String country,
			@Param(value="TFrom")String TFrom,
			@Param(value="TDay")String TDay,
			@Param(value="Mouth")String Mouth,
			@Param(value="Shifts")String Shifts)throws Exception;

    int updateByPrimaryKeySelective(travelmessage record);

    int updateByPrimaryKey(travelmessage record);
}