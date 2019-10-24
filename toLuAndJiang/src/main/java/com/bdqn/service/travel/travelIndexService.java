package com.bdqn.service.travel;




import java.util.List;

import com.bdqn.pojo.travel.travelmessage;


public interface travelIndexService {

	/*travelmessage selectTravelMessage(Integer travelid);*/
	
	 public List<travelmessage> getTravelMessageList();
	 
	 public List<travelmessage> getDTravelMessageList();
	 
	 public List<travelmessage> getThemeTravelList();
	 
	 public List<travelmessage> getAttractions();
	 
	 public List<travelmessage> getTravelList(String travelname,Integer price,
			 String supplier,String country,
			 String TFrom,String TDay,
			 String Mouth,String Shifts)throws Exception;

}
