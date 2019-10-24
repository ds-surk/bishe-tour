<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="${pageContext.request.contextPath}/js/shoppingJs/jquery/jquery.min.js"></script>
<link href="${pageContext.request.contextPath}/css/shoppingCss/bootstrap/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/shoppingJs/bootstrap/bootstrap.min.js"></script>

<title>购物车</title>
</head>
<body>
<style>
body{
    font-size: 12px;
    font-family: Arial;
}
a{
    color:#999;
}
a:hover{
    text-decoration:none;
    color: #C40000;
}
div.cartProductChangeNumberDiv a {
    width: 14px;
    display: inline-block;
    text-align: center;
    color: black;
    text-decoration: none;
}
img.cartProductItemIfSelected, img.selectAllItem {
    cursor: pointer;
}
tr.cartProductItemTR {
    border: 1px solid #CCCCCC;
}
div.cartProductChangeNumberDiv {
    border: solid 1px #E5E5E5;
    width: 80px;
}
table.cartProductTable {
    width: 100%;
    font-size:12px;
}
span.cartProductItemOringalPrice {
    text-decoration: line-through;
    color: #9C9C9C;
    display: block;
    font-weight: bold;
    font-size: 14px;
}
div.cartProductChangeNumberDiv input {
    border: solid 1px #AAAAAA;
    width: 42px;
    display: inline-block;
}
div.cartProductChangeNumberDiv a {
    text-decoration: none;
}
img.cartProductImg {
    padding: 1px;
    border: 1px solid #EEEEEE;
    width: 80px;
    height: 80px;
}
a.cartProductLink {
    color: #3C3C3C;
}
a.cartProductLink:hover {
    color: #C40000;
    text-decoration: underline;
}
div.cartProductLinkOutDiv {
    position: relative;
    height: 80px;
}
span.cartSumNumber {
    color: #C40000;
    font-weight: bold;
    font-size: 16px;
}
tr.cartProductItemTR td {
    padding: 20px 20px;
}
span.cartSumPrice {
    color: #C40000;
    font-weight: bold;
    font-size: 20px;
}
span.cartProductItemPromotionPrice {
    font-family: Arial;
    font-size: 14px;
    font-weight: bold;
    color: #C40000;
}
span.cartProductItemSmallSumPrice {
    font-family: Arial;
    font-size: 14px;
    font-weight: bold;
    color: #C40000;
}
span.cartTitlePrice {
    color: #C40000;
    font-size: 14px;
    font-weight: bold;
    margin-left: 5px;
    margin-right: 3px;
}
div.cartProductLinkInnerDiv {
    position: absolute;
    bottom: 0;
    height: 20px;
}
div.cartTitle button {
    background-color: #AAAAAA;
    border: 1px solid #AAAAAA;
    color: white;
    width: 53px;
    height: 25px;
    border-radius: 2px;
}
div.cartFoot {
    background-color: #E5E5E5;
    line-height: 50px;
    margin: 20px 0px;
    color: black;
    padding-left: 20px;
}
div.cartFoot button {
    background-color: #AAAAAA;
    border: 0px solid #AAAAAA;
    color: white;
    height: 100%;
    width: 120px;
    height: 50px;
    font-size: 20px;
    text-align: center;
}
table.cartProductTable th {
    font-weight: normal;
    color: #3C3C3C;
    padding: 20px 20px;
}
table.cartProductTable th.selectAndImage{
    width:140px;
}
table.cartProductTable th.operation{
    width:30px;
}
div.cartDiv {
    max-width: 1013px;
    margin: 10px auto;
    color: black;
}
</style>
<script>
function formatMoney(num){
    num = num.toString().replace(/\$|\,/g,'');  
    if(isNaN(num))  
        num = "0";  
    sign = (num == (num = Math.abs(num)));  
    num = Math.floor(num*100+0.50000000001);  
    cents = num%100;  
    num = Math.floor(num/100).toString();  
    if(cents<10)  
    cents = "0" + cents;  
    for (var i = 0; i < Math.floor((num.length-(1+i))/3); i++)  
    num = num.substring(0,num.length-(4*i+3))+','+  
    num.substring(num.length-(4*i+3));  
    return (((sign)?'':'-') + num + '.' + cents);  
}
 
$(function(){
    $("img.cartProductItemIfSelected").click(function(){
        var selectit = $(this).attr("selectit")
        if("selectit"==selectit){
            $(this).attr("src","${pageContext.request.contextPath}/images/shoppingImg/cartNotSelected.png");
            $(this).attr("selectit","false")
            $(this).parents("tr.cartProductItemTR").css("background-color","#fff");
        }
        else{
            $(this).attr("src","${pageContext.request.contextPath}/images/shoppingImg/cartSelected.png");
            $(this).attr("selectit","selectit")
            $(this).parents("tr.cartProductItemTR").css("background-color","#FFF8E1");
        }
        syncSelect();
        syncCreateOrderButton();
        calcCartSumPriceAndNumber();
    });
    $("img.selectAllItem").click(function(){
        var selectit = $(this).attr("selectit")
        if("selectit"==selectit){
            $("img.selectAllItem").attr("src","${pageContext.request.contextPath}/images/shoppingImg/cartNotSelected.png");
            $("img.selectAllItem").attr("selectit","false")
            $(".cartProductItemIfSelected").each(function(){
                $(this).attr("src","${pageContext.request.contextPath}/images/shoppingImg/cartNotSelected.png");
                $(this).attr("selectit","false");
                $(this).parents("tr.cartProductItemTR").css("background-color","#fff");
            });         
        }
        else{
            $("img.selectAllItem").attr("src","${pageContext.request.contextPath}/images/shoppingImg/cartSelected.png");
            $("img.selectAllItem").attr("selectit","selectit")
            $(".cartProductItemIfSelected").each(function(){
                $(this).attr("src","${pageContext.request.contextPath}/images/shoppingImg/cartSelected.png");
                $(this).attr("selectit","selectit");
                $(this).parents("tr.cartProductItemTR").css("background-color","#FFF8E1");
            });             
        }
        syncCreateOrderButton();
        calcCartSumPriceAndNumber();
    });
    /* $(".orderItemNumberSetting").keyup(function(){
        var pid=$(this).attr("pid");
        var stock= $("span.orderItemStock[pid="+pid+"]").text();
        var price= $("span.orderItemPromotePrice[pid="+pid+"]").text();
        var num= $(".orderItemNumberSetting[pid="+pid+"]").val();
        num = parseInt(num);
        if(isNaN(num))
            num= 1;
        if(num<=0)
            num = 1;
        if(num>stock)
            num = stock;
        syncPrice(pid,num,price);
    });
    $(".numberPlus").click(function(){
        var pid=$(this).attr("pid");
        var stock= $("span.orderItemStock[pid="+pid+"]").text();
        var price= $("span.orderItemPromotePrice[pid="+pid+"]").text();
        var num= $(".orderItemNumberSetting[pid="+pid+"]").val();
        num++;
        if(num>stock)
            num = stock;
        syncPrice(pid,num,price);
    });
    $(".numberMinus").click(function(){
        var pid=$(this).attr("pid");
        var stock= $("span.orderItemStock[pid="+pid+"]").text();
        var price= $("span.orderItemPromotePrice[pid="+pid+"]").text();
        var num= $(".orderItemNumberSetting[pid="+pid+"]").val();
        --num;
        if(num<=0)
            num=1;
        syncPrice(pid,num,price);
    });  */
 
})
function syncCreateOrderButton(){
    var selectAny = false;
    $(".cartProductItemIfSelected").each(function(){
        if("selectit"==$(this).attr("selectit")){
            selectAny = true;
        }
    });
    if(selectAny){
        $("button.createOrderButton").css("background-color","#C40000");
        $("button.createOrderButton").removeAttr("disabled");
    }
    else{
        $("button.createOrderButton").css("background-color","#AAAAAA");
        $("button.createOrderButton").attr("disabled","disabled");      
    }
}
function syncSelect(){
    var selectAll = true;
    $(".cartProductItemIfSelected").each(function(){
        if("false"==$(this).attr("selectit")){
            selectAll = false;
        }
    });
    if(selectAll)
        $("img.selectAllItem").attr("src","${pageContext.request.contextPath}/images/shoppingImg/cartSelected.png");
    else
        $("img.selectAllItem").attr("src","${pageContext.request.contextPath}/images/shoppingImg/cartNotSelected.png");
}
function calcCartSumPriceAndNumber(){
    var sum = 0;
    var totalNumber = 0;
    $("img.cartProductItemIfSelected[selectit='selectit']").each(function(){
        var oiid = $(this).attr("oiid");
        var price =$(".cartProductItemSmallSumPrice[oiid="+oiid+"]").text();
        price = price.replace(/,/g, "");
        price = price.replace(/￥/g, "");
        sum += new Number(price);   
/*         var num =$(".orderItemNumberSetting[oiid="+oiid+"]").val();
        totalNumber += new Number(num);  */
        totalNumber++;
    });
    $("span.cartSumPrice").html("￥"+formatMoney(sum));
    $("span.cartTitlePrice").html("￥"+formatMoney(sum));
    $("span.cartSumNumber").html(totalNumber);
}
/* function syncPrice(pid,num,price){
    $(".orderItemNumberSetting[pid="+pid+"]").val(num);
	var cartProductItemSmallSumPrice = formatMoney(num*price);
    $(".cartProductItemSmallSumPrice[pid="+pid+"]").html("￥"+cartProductItemSmallSumPrice);
    calcCartSumPriceAndNumber();
} */
function del(shoppingnumber){
         $.ajax({
             type: "GET",
             url: "shoppingdelete",
             data: "shoppingnumber=" + shoppingnumber,
             dataType: "text",
             success: function(data){
			 				if(data == "true"){
			 					alert("删除成功！");
			 				   window.location.reload();
							}else{
								alert("删除失败！");
							}
                      }
    })
}
$(function(){
	$(".deleteOrderItem").click(function(){
		var shoppingnumber = $(this).attr("oiid");
       del(shoppingnumber);
	})
})
function empty(){
	$(".cartProductItemIfSelected").each(function(){
		if("selectit"==$(this).attr("selectit")){
    		var shoppingnumber = $(this).attr("oiid");
    		del(shoppingnumber);
    	}
	})
}
function paypassword(){
    	var paypassword = prompt("please input paypassword!");
    	var uid = $(".cartProductUID").text();
    	$.ajax({
			type:"GET",
			url:"shoppingpwd",
			data:{paypassword:paypassword, uid:uid},
			dataType:"text",
			success:function (data){
				if(data == "true"){
					alert("密码正确！");
					payfor();
				}else{
					alert("密码错误！");
				}
			},
			error:function(data){
				alert("请理智切手！");
			}
		})
}
function payfor(){
		var price_0 = $(".cartSumPrice").text();
    	var price = price_0.substring(1);
    	var uid = $(".cartProductUID").text();
    	$.ajax({
    		type:"GET",
    		url:"shoppingpay",
    		data:{uid:uid,price:price},
    		dataType:"text",
    		success:function(data){
    			if(data == "success"){
					alert("支付成功！");
				}else{
					alert("余额不足，支付失败！");
				}
    		}
    	});
		empty();
}
$(function(){
	 $(".createOrderButton").click(function(){
		 	paypassword(); 	    	
	 })
})
$(document).ready(function(){
	$(".cartProductItemTR").each(function(){
		if(1 == $(this).find($(".cartProductType")).attr("type")){
			$(this).find($(".cartProductLink")).text("飞机票");
			$(this).find($(".cartProductImg")).attr("src","${pageContext.request.contextPath}/images/shoppingImg/ticket.jpg");
    	}else if(2 == $(this).find($(".cartProductType")).attr("type")){
    		$(this).find($(".cartProductLink")).text("旅游票");
    		$(this).find($(".cartProductImg")).attr("src","${pageContext.request.contextPath}/images/shoppingImg/travel.png");
    	}else{
    		$(this).find($(".cartProductLink")).text("酒店票");
    		$(this).find($(".cartProductImg")).attr("src","${pageContext.request.contextPath}/images/shoppingImg/hotel.jpg");
    	}
	})
})
function hotelorder(uid,hotelnumber){
	$.ajax({
		type:"GET",
		url:"shoppinghotel",
		data:{uid:uid,hotelnumber:hotelnumber},
		dataType:"text",
		success:function(data){
			var order_0 = data.replace("{","");
			var order_1 = order_0.replace("}","");
			var order_2 = order_1.replace(/\,/g,"\n");
			alert(order_2);
		}
	})
}
function travelorder(uid,travelnumber){
	$.ajax({
		type:"GET",
		url:"shoppingtravel",
		data:{uid:uid,travelnumber:travelnumber},
		dataType:"text",
		success:function(data){
			var order_0 = data.replace("{","");
			var order_1 = order_0.replace("}","");
			var order_2 = order_1.replace(/\,/g,"\n");
			alert(order_2);
		}
	})
}
function ticketorder(uid,ticketnumber){
	$.ajax({
		type:"GET",
		url:"shoppingticket",
		data:{uid:uid,ticketnumber:ticketnumber},
		dataType:"text",
		success:function(data){
			var order_0 = data.replace("{","");
			var order_1 = order_0.replace("}","");
			var order_2 = order_1.replace(/\,/g,"\n");
			alert(order_2);
		}
	})
}
$(function(){
	$(".cartProductImg1").click(function(){
		var uid = $(".cartProductUID").text();
		if(1 == $(this).parents("tr").find($(".cartProductType")).attr("type")){
			var ticketnumber = $(this).parents("tr").find($(".cartProductTicketNumber")).attr("ticketnumber");
    		ticketorder(uid,ticketnumber);
    	}else if(2 == $(this).parents("tr").find($(".cartProductType")).attr("type")){
			var travelnumber = $(this).parents("tr").find($(".cartProductTravelNumber")).attr("travelnumber");
    		travelorder(uid,travelnumber);
    	}else{
    		var hotelnumber = $(this).parents("tr").find($(".cartProductHotelNumber")).attr("hotelnumber");
    		hotelorder(uid,hotelnumber);
    	}
	 })
})
</script>

<%@ include file="header.jsp"%>
<div style="display:none;" class="cartProductUID">111111</div>
<div class="cartDiv">
    <div class="cartTitle pull-right">
        <span>已选商品  (不含运费)</span>
        <span class="cartTitlePrice">￥0.00</span>
        <button class="createOrderButton" style="background-color: rgb(170, 170, 170);" disabled="disabled">结 算</button>
    </div>
    <div class="cartProductList">
        <table class="cartProductTable">
            <thead>
                <tr>
                    <th class="selectAndImage">
                            <img src="${pageContext.request.contextPath}/images/shoppingImg/cartNotSelected.png" class="selectAllItem" selectit="false">                
                    全选
                    </th>
                    <th>商品信息</th>
                    <th>单价</th>
                    <!-- <th>数量</th> -->
                    <!-- <th width="120px">金额</th> -->
                    <th width="120px"></th>
                    <th class="operation">操作</th>
                </tr>
            </thead>
            <tbody>
					<c:forEach var="cart" items="${all}" varStatus="status">
						<tr class="cartProductItemTR" oiid="${cart.shoppingnumber}" style="background-color: rgb(255, 255, 255);">
							<td>
	                            <img src="${pageContext.request.contextPath}/images/shoppingImg/cartNotSelected.png" class="cartProductItemIfSelected" oiid="${cart.shoppingnumber}" selectit="false">
	                            <a href="#nowhere" style="display:none"><img src="${pageContext.request.contextPath}/images/shoppingImg/cartSelected.png"></a>
	                            <a href="#nowhere" class="cartProductImg1"><img src="${pageContext.request.contextPath}/images/shoppingImg/3665.jpg" class="cartProductImg"></a>
                        	</td>
                        	<td style="display:none;">
                        		<span class="cartProductState" state="${cart.shoppingstate}"></span>
                        		<span class="cartProductType" type="${cart.shoppingtype}"></span>
                        		<span class="cartProductTicketNumber" ticketnumber="${cart.ticketnumber}"></span>
                        		<span class="cartProductTravelNumber" travelnumber="${cart.travelnumber}"></span>
                        		<span class="cartProductHotelNumber" hotelnumber="${cart.hotelnumber}"></span>
                        	</td>
				       		<td >
				       			<div class="cartProductLinkOutDiv">
				       				<a class="cartProductLink" href="#nowhere"></a>
				       				<span>${cart.shoppingnumber}</span>
					       			<div class="cartProductLinkInnerDiv">
	                                    <img title="支持信用卡支付" src="${pageContext.request.contextPath}/images/shoppingImg/creditcard.png">
	                                    <img title="消费者保障服务,承诺7天退货" src="${pageContext.request.contextPath}/images/shoppingImg/7day.png">
	                                    <img title="消费者保障服务,承诺如实描述" src="${pageContext.request.contextPath}/images/shoppingImg/promise.png">
	                                </div>
                                </div>
                            </td>				       		
				       		<td>
	                            <span class="cartProductItemOringalPrice">￥${cart.price}</span>
	                            <span class="cartProductItemPromotionPrice">￥${cart.price * 0.85}</span>
                        	</td>
	                        <%-- <td>
	                            <div class="cartProductChangeNumberDiv">
	                                <span pid="${cart.shoppingnumber}" class="hidden orderItemStock ">3</span>
	                                <span pid="${cart.shoppingnumber}" class="hidden orderItemPromotePrice ">${cart.price * 0.85}</span>
	                                <a href="#nowhere" class="numberMinus" pid="${cart.shoppingnumber}">-</a>
	                                <input value="1" autocomplete="off" class="orderItemNumberSetting" oiid="${cart.shoppingnumber}" pid="${cart.shoppingnumber}">
	                                <a href="#nowhere" class="numberPlus" pid="${cart.shoppingnumber}" stock="3">+</a>
	                            </div>                    
	                         </td> --%>
	                        <td>
	                            <span pid="${cart.shoppingnumber}" oiid="${cart.shoppingnumber}" class="cartProductItemSmallSumPrice" style="display:none;">
	                            ￥${cart.price * 0.85}
	                            </span>
	                        </td>
	                        <td>
	                            <a href="#nowhere" oiid="${cart.shoppingnumber}" class="deleteOrderItem">删除</a>
	                        </td>		       		
			       		</tr> 
					</c:forEach>          		
            </tbody>
        </table>
    </div>
    <div class="cartFoot">
        <img src="${pageContext.request.contextPath}/images/shoppingImg/cartNotSelected.png" class="selectAllItem" selectit="false">
        <span>全选</span>
<!--         <a href="#">删除</a> -->
        <div class="pull-right">
            <span>已选商品 <span class="cartSumNumber">0</span> 件</span>
            <span>合计 (不含运费): </span> 
            <span class="cartSumPrice">￥0.00</span>
            <button class="createOrderButton" style="background-color: rgb(170, 170, 170);" disabled="disabled">结  算</button>
        </div>
    </div>
</div>

<%@ include file="footer.jsp"%>
</body>
</html>