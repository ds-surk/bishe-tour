package com.bdqn.controller.flight;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.bdqn.mapper.flight.SpecialTicketMapper;

import com.bdqn.pojo.flight.OrderState;
import com.bdqn.pojo.flight.SpecialTicket;
import com.bdqn.service.flight.OrderStateService;
import com.bdqn.service.flight.SpecialTicketService;



@Controller
public class FlightController {
	
	@Resource
	private SpecialTicketService specialTicketService1;
	//地区菜单
	@Resource
	private OrderStateService orderStateService1;
	
	
	/*SpecialTicket specialTicket;*/
	@RequestMapping("/ft")
	public String flight(HttpSession session,@RequestParam(value="queryFlatformId",required=false) String _queryFlatformId,@RequestParam(value="companyid",required=false) Integer companyId) {
		
		//特价机票
		List<SpecialTicket> specialTicketsList = null;
		//特价机票地区菜单
		List<OrderState> flatFormList = null ;
		
		SpecialTicket areaMenu = null;
		
		Integer queryFlatformId = null;
		if(_queryFlatformId != null && !_queryFlatformId.equals("")){
			queryFlatformId = Integer.parseInt(_queryFlatformId);
		}
		
		try {
			specialTicketsList = specialTicketService1.getSpecialTicketsList();
			flatFormList = this.getOrderStateList("AREA");
			areaMenu = specialTicketService1.getAreaMenu(companyId);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		session.setAttribute("specialTicketsList", specialTicketsList);
		session.setAttribute("flatFormList", flatFormList);
		session.setAttribute("queryFlatformId", queryFlatformId);
		session.setAttribute("areaMenu", areaMenu);
		return "flightJsp/flyTicket";
	}
	@RequestMapping("/ftList")
	public String flyList(HttpSession session) {
		List<SpecialTicket> specialTicketsList = null;
		//特价机票订单列表
		try {
			specialTicketsList = specialTicketService1.getSpecialTicketsList();
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		session.setAttribute("specialTicketsList", specialTicketsList);
		return "flightJsp/flyOrder";
	}
	
	@RequestMapping(value="/FlightList",produces = {"application/json;charset=UTF-8"})
	public @ResponseBody String getTravelList(@RequestParam(value="roundtype",required=false) String roundType,@RequestParam(value="begincity",required=false) String beginCity
			,@RequestParam(value="destination",required=false) String destination
			,@RequestParam(value="chufatime",required=false) String chufaTime
			,@RequestParam(value="chufacompany",required=false) String chufaCompany
			,@RequestParam(value="flightnumber",required=false) String flightNumber
			) throws Exception {
		
		/*Integer price=null;
		String supplier=null;
		String country=null;
		String TFrom=null;
		String Mouth=null;
		String Shifts=null;*/
		/*String travelTDay=null;*/
		/*travelmessage travelmessage=new travelmessage();*/
		List<SpecialTicket> SpecialTicketsList = new ArrayList<SpecialTicket>();
		List<SpecialTicket> SpecialTicketsList2 = new ArrayList<SpecialTicket>();

		if(chufaTime!=null) {
		
		String[] flightlist = chufaTime.split(",");
		
		for(int i=0;flightlist.length>i;i++){
		
			SpecialTicketsList2=specialTicketService1.getFlightList(flightNumber, roundType, beginCity, destination, flightlist[i],chufaCompany);
			for(int x=0;x<SpecialTicketsList2.size();x++){
				SpecialTicketsList.add(SpecialTicketsList2.get(x));
			}
			
		/*TravelList.add(travelmessage);*/
		}
		}else {
			chufaTime=null;
			SpecialTicketsList=specialTicketService1.getFlightList(flightNumber, roundType, beginCity, destination, chufaTime,chufaCompany);
		}
		System.out.println(SpecialTicketsList);
		
		String flightJSONList=JSON.toJSONString(SpecialTicketsList);
		
		return flightJSONList;
	}
	public List<OrderState> getOrderStateList(String typeCode){
		List<OrderState> orderStatesList = null;
		try {
			orderStatesList = orderStateService1.getOrderStateList(typeCode);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return orderStatesList;
		
	}
	
	/**
	 * 跳转到APP信息审核页面
	 * @param appId
	 * @param versionId
	 * @param model
	 * @return
	 */
	/*@RequestMapping(value="/check",method=RequestMethod.GET)
	public String check(@RequestParam(value="cid",required=false) String companyId, 
					   Model model){
		AppInfo appInfo = null;
		AppVersion appVersion = null;
		SpecialTicket specialTicket = null;
		try {
			
			specialTicket = specialTicketService1.getAreaMenu(Integer.parseInt(companyId));
			appVersion = appVersionService.getAppVersionById(Integer.parseInt(versionId));
		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute(appVersion);
		model.addAttribute(appInfo);
		model.addAttribute(specialTicket);
		return "flyTicket";
	}*/
/*	@RequestMapping("/ft2")
	public String flight2(@RequestParam(value = "flightid",required=false) Integer flightID,Model model){
		specialTicket = specialTicketService.getFightByID(1);
		if(null != specialTicket){
			model.addAttribute("flightid", specialTicket.getFlightid());
			model.addAttribute("begincity", specialTicket.getBegincity());
			model.addAttribute("destination", specialTicket.getDestination());
		}
		return "/jsp/flightJsp/flyTicket";
	}
	*/
/*	@RequestMapping("/ftOrder")
	public String flightOrder() {
		
		return "/jsp/flightJsp/flyOrder";
	}*/
}
