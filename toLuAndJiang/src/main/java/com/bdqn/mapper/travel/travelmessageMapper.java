package com.bdqn.mapper.travel;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bdqn.pojo.travel.travelmessage;



public interface travelmessageMapper {
    int deleteByPrimaryKey(Integer travelid);

    int insert(travelmessage record);

    int insertSelective(travelmessage record);

    travelmessage selectByPrimaryKey(Integer travelid);
    
/*    ��ó���������Ŀ����*/
    public List<travelmessage> getTravelMessageList();
    
    /*    ��ù���������Ŀ����*/
    public List<travelmessage> getDTravelMessageList();
/*    ����������ζ���*/
    public List<travelmessage> getThemeTravelList();
/*        ������γ�������
    public List<travelmessage> getCountryList(@Param("TFrom")String TFrom);*/
    
/*    ������ξ�������*/
    public List<travelmessage> getAttractions();
  /*  ����*/
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