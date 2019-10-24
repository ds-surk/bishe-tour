package com.bdqn.controller.shopping;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.bdqn.pojo.shopping.Hotelorder;
import com.bdqn.pojo.shopping.Ticketorder;

import com.bdqn.pojo.shopping.User;
import com.bdqn.pojo.travel.travelorder;
import com.bdqn.service.impl.shopping.HotelorderServiceImpl;
import com.bdqn.service.impl.shopping.ShoppingcartServiceImpl;
import com.bdqn.service.impl.shopping.TicketorderServiceImpl;
import com.bdqn.service.impl.shopping.TravelorderServiceImpl;
import com.bdqn.service.impl.shopping.UserServiceImpl;

@Controller
public class ShoppingController {
	
	@Autowired
	ShoppingcartServiceImpl shoppingcartServiceImpl;
	
	@Autowired
	UserServiceImpl userServiceImpl;

	@Autowired
	TravelorderServiceImpl travelorderServiceImpl;
	
	@Autowired
	TicketorderServiceImpl ticketorderServiceImpl;
	
	@Autowired
	HotelorderServiceImpl hotelorderServiceImpl;
	
	@RequestMapping("/shoppingdelete")
	@ResponseBody
	public String Delete(HttpServletRequest request) throws IOException{
		String shoppingnumber = request.getParameter("shoppingnumber");
		System.out.println(shoppingnumber);
		int sn = Integer.parseInt(shoppingnumber);
		System.out.println(sn+"sn");
		int i = shoppingcartServiceImpl.delete(sn);
		System.out.println("删除");
		if(i == 1){
			System.out.println("删除成功");
			return "true";
		}else{
			System.out.println("删除失败");
			return  "false";
		}	
	}
	
	@RequestMapping("/shoppingpwd")
	@ResponseBody
	public String Paypassword(HttpServletRequest request) throws IOException{
		String paypassword_0 = request.getParameter("paypassword");
		String uid_0 = request.getParameter("uid");
		Integer paypassword = Integer.parseInt(paypassword_0);
		Integer uid = Integer.parseInt(uid_0);
		System.out.println("密码："+ paypassword);
		System.out.println("用户身份："+ uid);
		User user = userServiceImpl.select(uid);
		if(user.getPaypassword().equals(paypassword)){
			return "true";
		}else{
			return "false";
		}
	}
	
	@RequestMapping("/shoppingpay")
	@ResponseBody
	public String Payfor(HttpServletRequest request) throws IOException{
		String uid_0 = request.getParameter("uid");
		String price_0 = request.getParameter("price");
		Double price = Double.parseDouble(price_0);
		Integer uid = Integer.parseInt(uid_0);
		System.out.println("金钱："+ price);
		System.out.println("用户身份："+ uid);
		User user = userServiceImpl.select(uid);
		Double money = user.getMoney() - price;
		if(money < 0){
			return "fail";
		}else{
			int i = userServiceImpl.update(money,uid);
			return "success";
		}
	}
	
	@RequestMapping("/shoppinghotel")
	@ResponseBody
	public String Hotel(HttpServletRequest request) throws IOException{
		String uid_0 = request.getParameter("uid");
		String hotelnumber_0 = request.getParameter("hotelnumber");
		Integer hotelnumber = Integer.parseInt(hotelnumber_0);
		Integer uid = Integer.parseInt(uid_0);
		System.out.println("酒店号码："+ hotelnumber);
		System.out.println("用户身份："+ uid);
		Hotelorder hotelorder = hotelorderServiceImpl.select(uid, hotelnumber);
		String hoteljson = JSON.toJSONStringWithDateFormat(hotelorder, "yyyy-MM-dd");
		return hoteljson;
	}
	
	@RequestMapping(value = "shoppingticket",produces = "application/json;charset=utf-8")
	@ResponseBody
	public String Ticket(HttpServletRequest request) throws IOException{
		String uid_0 = request.getParameter("uid");
		String ticketnumber_0 = request.getParameter("ticketnumber");
		Integer ticketnumber = Integer.parseInt(ticketnumber_0);
		Integer uid = Integer.parseInt(uid_0);
		System.out.println("机票号码："+ ticketnumber);
		System.out.println("用户身份："+ uid);
		Ticketorder ticketorder = ticketorderServiceImpl.select(uid, ticketnumber);
		String ticketjson = JSON.toJSONStringWithDateFormat(ticketorder, "yyyy-MM-dd");
		return ticketjson;
	}
	
	@RequestMapping("/shoppingtravel")
	@ResponseBody
	public String Travel(HttpServletRequest request) throws IOException{
		String uid_0 = request.getParameter("uid");
		String travelnumber_0 = request.getParameter("travelnumber");
		Integer travelnumber = Integer.parseInt(travelnumber_0);
		Integer uid = Integer.parseInt(uid_0);
		System.out.println("旅行号码："+ travelnumber);
		System.out.println("用户身份："+ uid);
		travelorder travelorder = travelorderServiceImpl.select(uid, travelnumber);
		String traveljson = JSON.toJSONStringWithDateFormat(travelorder, "yyyy-MM-dd");
		return traveljson;
	}
	
	@RequestMapping("/shoppingcart")
	public ModelAndView listCategory2(Integer uid){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shoppingJsp/shoppingcart");
		mav.addObject("all", shoppingcartServiceImpl.select(uid));
		return mav;
	}
	
}
