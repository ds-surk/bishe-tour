/**
 * 
 */

//验证密码
$('input[name="newpassword"]').focus(function(){
  $(this).next().text('以字母开头的6-18位字符、数字和下划线').removeClass().addClass('state2 icon-exclamation-sign');
}).blur(function(){
  if($(this).val().search(/^[a-zA-Z]\w{5,17}$/)==-1){
    $(this).next().text('请输入正确的密码格式').removeClass().addClass('icon-remove-sign state3');
  }else{         
    $(this).next().text('').removeClass().addClass('icon-ok-sign');
    ok2=true;
  }
    
});
//判断新旧密码是否一致
$('input[name="newpassword"]').blur(function(){	
	var val1=$('.oldpassword').val();
	var val2=$('.newpasswordone').val();
	if(val1==val2){
		$(this).next().text('请输入与旧密码不一样的密码！！！').removeClass().addClass('icon-remove-sign state3');
		$('.newspasswordone').val("");
		$('.newspasswordone').focus();
	}
})

$('input[name="oldpassword"]').focus(function(){
	$(this).next().hide();
})

//判断两次新密码是否相等
$('input[name="confirmnewpassword"]').blur(function(){	
	var val1=$('.newpasswordone').val();
	var val2=$('.newpasswordtwo').val();
	if(val1!=val2){
		$(this).next().show().text('请输入与新密码同样的密码！！！').removeClass().addClass('icon-remove-sign state3');		
	}
})

$('input[name="confirmnewpassword"]').focus(function(){
	$(this).next().hide();
})

function yyyy(){
	var val1=$('.oldpassword').val();
	var val2=$('.newpasswordone').val();
	var val3=$('.newpasswordtwo').val();
	if(val1!=val2&&val2==val3&&val2!=""){
		return true;
	}
	alert("请输入正确的密码信息！！！")
	return false;
}

	
























