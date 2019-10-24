/**
 * Created by zhzbin on 2016/11/24.
 */
var travelList = {
    init: function (e) {
        var sef = this;
        sef.travelList = './travel_list.jsp';
        sef.travelMessage = './travel_message.jsp';
        $(function () {
            var test = new Vcity.CitySelector({
                input: 'travelCitySelect1'
            });
            var test = new Vcity.CitySelector({
                input: 'travelCitySelect2'
            });
            var test = new Vcity.CitySelector({
                input: 'travelCitySelect3'
            });

        });
        sef.bindEvent();

    },
    bindEvent: function (e) {
        var sef = this;
        $(".travel-model-grid").bind("click", function (e) {
            window.location = sef.travelMessage;
        });
        $(".search-one-param button").on("click", function (e) {
            var hideCheckId = this.getAttribute("data-show-id");
            var thPraent = $(this).closest(".search-one-param");
            if (!thPraent.hasClass("hide") && hideCheckId) {
                thPraent.addClass("hide");
                $("#" + hideCheckId).removeClass("hide").fadeIn();
            }
        })
        $(".search-param-cancel span").on("click", function (e) {
            var showCheckId = this.getAttribute("data-show-id");
            var thPraent = $(this).closest(".search-one-param");
            if (!thPraent.hasClass("hide") && showCheckId) {
                thPraent.addClass("hide");
                $("#" + showCheckId).removeClass("hide").fadeIn();
            }
        })
        $(".search-already .icon-remove").on("click", function (e) {
            $(this).closest("button").remove();
        });
        $("#check_localtion-hide input").on("click", function (e) {
            $("#travel_localtion").remove();
            var val="";
            $("#check_localtion-hide .checkbox-inline input").each(function(i,item){
                if(this.checked){
                    if(val){
                        val+="、"+this.value
                    }else{
                        val=this.value;
                    }
                    
                    
                }
                
            });
            $.ajax({
            	   url: "TravelList",
            	   type: "post",
            	   data: $("#form1").serialize(),
            	   dataType: "JSON",
            	  /* contentType: 'application/json; charset=UTF-8',*/
            	   success:function(data){
            		 alert(data[0].travelname);
            		 var box=$(".travelzdy");
            		 box.html("");
            		 var box1="";
            		 for(var i=0;i<data.length;i++){       
            			 
           				box1 +="<div class='travel-model-grid'>"+
           					"<div class='modal-grid-left'>"+
                    "<div class='recommend'>"+
                       "<span class='text'>力推</span>"+
                    "</div>"+
                    "<img src='/ssm/images/img/travel_message/travel/guonei/"+
                    data[i].picture+
                    ".jpg'>"+
                "</div>"+
                "<div class='model-grid-right'>"+
                "<div class='model-grid-title'><a href='/ssm/travalBooking?travelname="+data[i].travelname+"'>"+data[i].travelname+"</a></div>"+                    
                    "<div class='model-grid-message'>"+
                        "<span>"+data[i].tFrom+"出发</span>"+data[i].introduce+
                        "<br>"+
                        "<span>班期： </span>"+data[i].shifts+
                        "<br>"+
                        "<span>供应商：</span>由 "+ data[i].supplier+ "直售，并提供咨询/预定/售后服务"+
                    "</div>"+
                    "<div class='model-grid-grade'>"+
                        "<div class='cell-money'>"+
                            "￥<span>"+data[i].price+"</span>起"+
                        "</div>"+
                        "<div class='cell-grade'>"+
                            "<span class='left'>"+
                            "<span>"+data[i].score+"</span>分</span>"+
                            "<span class='right'>"+
                            "<span>"+data[i].travelCount+"人</span>"+
                            "出游<br><span>"+data[i].commentCount+"条</span>  点评</span>"+
                        "</div>"+
                     "</div>"+
                     "</div>"+
                  "</div>"
                	}
                         box.html(box1);
          			   /* var box = document.getElementById("zhoubian1");
          			   
          			    box.innerHTML="";
          			   
          			    
          			 var box1="";
          			    
          			 for(var i=0;i<data.length;i++){          				
          				box1=X
          				}
          			box.innerHTML=box1;*/
          			    
          		} 
            	  });
            $(".search-already").append('<button id="travel_localtion" class="btn"><span>游玩线路:' + val +
                '</span><i class="icon-remove"></i></button>')
            $("#travel_localtion .icon-remove").on("click", function (e) {
                $(this).closest("button").remove();
                $("#check_localtion-hide .checkbox-inline input").each(function(i,item){
                    this.checked =false;
                });
            });

        });


    },
    refresh: function (e) {
        alert("刷新函数是否正常使用？")
    }
};


$("#locationCheckbox4").click(function(){
	 
});

$(".icon-search").click(function(){
	$.ajax({
 	   url: "TravelList",
 	   type: "post",
 	   data: $("#form2").serialize(),
 	   dataType: "JSON",
 	  /* contentType: 'application/json; charset=UTF-8',*/
 	   success:function(data){
 		 alert(data[0].travelname);
 		 var box2=$(".travelzdy");
 		 box2.html("");
 		 var box3="";
 		 for(var i=0;i<data.length;i++){       
 			 
				box3 +="<div class='travel-model-grid'>"+
					"<div class='modal-grid-left'>"+
         "<div class='recommend'>"+
            "<span class='text'>力推</span>"+
         "</div>"+
         "<img src='/ssm/images/img/travel_message/travel/guonei/"+
         data[i].picture+
         ".jpg'>"+
     "</div>"+
     "<div class='model-grid-right'>"+
         "<div class='model-grid-title'><a href='/ssm/travalBooking?travelname="+data[i].travelname+"'>"+data[i].travelname+"</a></div>"+                    
         "<div class='model-grid-message'>"+
             "<span>"+data[i].tFrom+"出发</span>"+data[i].introduce+
             "<br>"+
             "<span>班期： </span>"+data[i].shifts+
             "<br>"+
             "<span>供应商：</span>由 "+ data[i].supplier+ "直售，并提供咨询/预定/售后服务"+
         "</div>"+
         "<div class='model-grid-grade'>"+
             "<div class='cell-money'>"+
                 "￥<span>"+data[i].price+"</span>起"+
             "</div>"+
             "<div class='cell-grade'>"+
                 "<span class='left'>"+
                 "<span>"+data[i].score+"</span>分</span>"+
                 "<span class='right'>"+
                 "<span>"+data[i].travelCount+"人</span>"+
                 "出游<br><span>"+data[i].commentCount+"条</span>  点评</span>"+
             "</div>"+
          "</div>"+
          "</div>"+
       "</div>"
     	}
              box2.html(box3);
			   /* var box = document.getElementById("zhoubian1");
			   
			    box.innerHTML="";
			   
			    
			 var box1="";
			    
			 for(var i=0;i<data.length;i++){          				
				box1=X
				}
			box.innerHTML=box1;*/
			    
		} 
 	  });
})


