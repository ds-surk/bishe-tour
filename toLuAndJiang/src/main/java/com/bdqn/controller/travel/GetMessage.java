package com.bdqn.controller.travel;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import com.bdqn.pojo.travel.area;
import com.bdqn.pojo.travel.travelmessage;
import com.bdqn.pojo.travel.travelorder;
import com.bdqn.service.travel.areaService;
import com.bdqn.service.travel.travelIndexService;




@Controller
public class GetMessage {
	@Resource private travelIndexService  travelIndexService1;
	@Resource private areaService areaService;
/*	travelmessage travelmessage1=new travelmessage();*/
	private static double EarthRadius = 6378.137;
	
	private static double rad(double d) {
        return d * Math.PI / 180.0;
    }
	
	
	@RequestMapping("/getMessage")
	/*@ResponseBody*/
	public String getMessage(HttpSession session) {
		/*Integer travelid=1;
		travelmessage1=travelIndexService1.selectTravelMessage(travelid);
		session.setAttribute("travelmessage", travelmessage1);*/
	/*	国外*/
		List<travelmessage> travelMessageList = null;
	/*	国内*/
		List<travelmessage> DtravelMessageList = null;
	/*	主题旅游*/
		List<travelmessage> ThemeTravelList = null;
		
		List<travelmessage> AttractionsTravelList1 = null;
		
		List<travelmessage> peripheryTravelList1 = new ArrayList<travelmessage>();
		
		travelMessageList=travelIndexService1.getTravelMessageList();
		/*System.out.println(travelMessageList.get(0));*/
		session.setAttribute("travelMessageList", travelMessageList);
		
		DtravelMessageList=travelIndexService1.getDTravelMessageList();
		/*System.out.println(DtravelMessageList.get(0));*/
		session.setAttribute("DtravelMessageList", DtravelMessageList);
		
		ThemeTravelList=travelIndexService1.getThemeTravelList();
		
		session.setAttribute("ThemeTravelList", ThemeTravelList);
		
		AttractionsTravelList1=travelIndexService1.getAttractions();
		for(int i=0;i<AttractionsTravelList1.size();i++){
			if(AttractionsTravelList1.get(i).getAreaid()==5){
				peripheryTravelList1.add(AttractionsTravelList1.get(i));
			}
		}
		session.setAttribute("peripheryTravelList1", peripheryTravelList1);
		
		
		
		
		return "travelJsp/index";
	}
	
	
	
	@RequestMapping(value="/getCountry",method=RequestMethod.POST,produces = {"application/json;charset=UTF-8"})
public @ResponseBody String getCountry(@RequestParam(value="TFrom",required=false) String TFrom) {
		List<travelmessage> AttractionsTravelList = null;
		List<travelmessage> peripheryTravelList = new ArrayList<travelmessage>();
		double distance=0;		
		/*String TFrom=null;*/
		/*TFrom = (String) session.getAttribute("TFrom");*/
		/*TFrom=(String) request.getAttribute("TFrom");*/
		area area1=areaService.selectByPrimaryKey1(TFrom);
		int along=area1.getArealong();
		int alat=area1.getArealat();
		
		AttractionsTravelList=travelIndexService1.getAttractions();
		/*for(int i = 0;i<AttractionsTravelList.size();i++){
			int distancelong=Math.abs(AttractionsTravelList.get(i).getAttractionLONG()-along);
			int distancealat=Math.abs(AttractionsTravelList.get(i).getAttractionLAT()-alat);
			 long sum=distancelong*distancelong+distancealat*distancealat;
			  distance = Math.sqrt(sum);
			 
			 
			if(distancelong==0&distancealat==0){
				peripheryTravelList.add(AttractionsTravelList.get(i));
				
			}	if(distancelong==0&distancealat<10){
				peripheryTravelList.add(AttractionsTravelList.get(i));
				
			}	if(distancelong<10&distancealat==0){
				peripheryTravelList.add(AttractionsTravelList.get(i));
				
			}if(distance<10){
				peripheryTravelList.add(AttractionsTravelList.get(i));
				
			}
		}*/
		/*for(int i = 0;i<AttractionsTravelList.size();i++) {
			int distancelong=Math.abs(AttractionsTravelList.get(i).getAttractionLONG()-along);
			int distancealat=Math.abs(AttractionsTravelList.get(i).getAttractionLAT()-alat);
			 long sum=distancelong*distancelong+distancealat*distancealat;
			  
			  if (distancelong==0&distancealat==0) {
				  distance=0;
				  break;
			}else if (distancelong==0&distancealat!=0) {
				distance=distancealat;
				break;
			}else if (distancelong!=0&distancealat==0) {
				distance=distancelong;
				break;
			}else if (distancelong!=0&distancealat!=0) {				
				  distance = Math.sqrt(sum);
				break;
			}
			  
			  if(distance==0|distance<10) {
				  peripheryTravelList.add(AttractionsTravelList.get(i));
					break;
			  }			  
			  
		}
		*/
		for(int i = 0;i<AttractionsTravelList.size();i++){
			 double firstRadLat = rad(along);
		        double firstRadLng = rad(alat);
		        double secondRadLat = rad(AttractionsTravelList.get(i).getAttractionLONG());
		        double secondRadLng = rad(AttractionsTravelList.get(i).getAttractionLAT());
		 
		        double a = firstRadLat - secondRadLat;
		        double b = firstRadLng - secondRadLng;
		        double cal = 2 * Math.asin(Math.sqrt(Math.pow(Math.sin(a / 2), 2) + Math.cos(firstRadLat)
		                * Math.cos(secondRadLat) * Math.pow(Math.sin(b / 2), 2))) * EarthRadius;
		        double result = Math.round(cal * 10000d) / 10000d;
		
		        if(result<150) {
					  peripheryTravelList.add(AttractionsTravelList.get(i));
						
				  }	
		        
		        
		}
		
		System.out.println(area1.getTfrom());
		System.out.println(peripheryTravelList.get(0).getTravelname());
		
		
		String travelJSON=JSON.toJSONString(peripheryTravelList);
		
		
		return  travelJSON;
		
	}
	
	/*搜索*/
	@RequestMapping(value="/Travel_List")
	public String getTravelList1(HttpSession session) {
		return "travelJsp/travel_list";
		
	}
	
	
	@RequestMapping(value="/TravelList",produces = {"application/json;charset=UTF-8"})
	public @ResponseBody String getTravelList(@RequestParam(value="TDay",required=false) String TDay,@RequestParam(value="travelname",required=false) String travelname
			,@RequestParam(value="price",required=false) Integer price
			,@RequestParam(value="supplier",required=false) String supplier
			,@RequestParam(value="country",required=false) String country
			,@RequestParam(value="TFrom",required=false) String TFrom
			,@RequestParam(value="Mouth",required=false) String Mouth
			,@RequestParam(value="Shifts",required=false) String Shifts
			) throws Exception {
		
		/*Integer price=null;
		String supplier=null;
		String country=null;
		String TFrom=null;
		String Mouth=null;
		String Shifts=null;*/
		/*String travelTDay=null;*/
		/*travelmessage travelmessage=new travelmessage();*/
		List<travelmessage> TravelList = new ArrayList<travelmessage>();
		List<travelmessage> TravelList2 = new ArrayList<travelmessage>();

		if(TDay!=null) {
		
		String[] travellist = TDay.split(",");
		
		for(int i=0;travellist.length>i;i++){
		
			TravelList2=travelIndexService1.getTravelList(travelname, price, supplier, country, TFrom, travellist[i], Mouth, Shifts);
			for(int x=0;x<TravelList2.size();x++){
				TravelList.add(TravelList2.get(x));
			}
			
		/*TravelList.add(travelmessage);*/
		}
		}else {
			TDay=null;
			TravelList=travelIndexService1.getTravelList(travelname, price, supplier, country, TFrom,TDay, Mouth, Shifts);
		}
		System.out.println(TravelList);
		
		String travelJSONList=JSON.toJSONString(TravelList);
		
		return travelJSONList;
	}
	
	@RequestMapping(value="/travalBooking",produces = {"application/json;charset=UTF-8"})
	public String gettravalBooking(HttpSession session,@RequestParam(value="travelname",required=false) String travelname
			,@RequestParam(value="price",required=false) Integer price
			,@RequestParam(value="supplier",required=false) String supplier
			,@RequestParam(value="country",required=false) String country
			,@RequestParam(value="TFrom",required=false) String TFrom
			,@RequestParam(value="Mouth",required=false) String Mouth
			,@RequestParam(value="Shifts",required=false) String Shifts
			,@RequestParam(value="TDay",required=false) String TDay) throws Exception {
		/*Integer price=null;
		String supplier=null;
		String country=null;
		String TFrom=null;
		String Mouth=null;
		String Shifts=null;
		String TDay=null;*/
		/*String travelTDay=null;*/
		
		/*byte[] Search=null;*/
		travelname=new String(travelname.getBytes("ISO8859-1"),"UTF-8"); 
		
		List<travelmessage> TravelList = new ArrayList<travelmessage>();
		TravelList=travelIndexService1.getTravelList(travelname, price, supplier, country, TFrom, TDay, Mouth, Shifts);
		
		System.out.println(TravelList.get(0));
		session.setAttribute("TravelList", TravelList.get(0));
		
		return "travelJsp/travalBooking";	
	}
	
	
	@RequestMapping(value="/pricex",produces = {"application/json;charset=UTF-8"})
	public @ResponseBody String getprice(@RequestParam(value="count",required=false) Integer count
			,@RequestParam(value="price",required=false) Double price) throws Exception {
		/*@RequestBody JSONObject obj,*/
		/*String data=obj.toJSONString();
		JSONObject json = JSON.parseObject(data);*/
	    /*count=json.getInteger("count");
	    price=json.getInteger("price");*/
		/*Integer count=travelorder.getCount();
		Double price=travelorder.getPrice();*/
		
		System.out.println(count);
		System.out.println(price);
		double sumPrice=0;
		sumPrice=count*price;
		System.out.println(sumPrice);
		
		String sumPrice1=JSON.toJSONString(sumPrice);
		return sumPrice1;
	}
	
	
	
}