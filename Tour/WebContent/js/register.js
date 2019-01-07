window.onload = function(){
	/*表单验证*/
	 var textboxList = document.getElementsByClassName("textbox");
   for(var m=0; m<textboxList.length; m++){
   	    textboxList[m].onblur = function(){ 
   		    if(this.value.length == " "){
   			    this.style.border = "1px solid red";
   			    var index = this.getAttribute("index");
   			    textboxList[index].style.color = "red";
   			    textboxList[index].value = this.getAttribute("tips");
   		    }
   		
   	    }
   	    textboxList[m].onfocus = function(){
   	    	this.style.border = "";
   	    	var index = this.getAttribute("index");
   			textboxList[index].style.color = "#333";
   			textboxList[index].value = "";
   	    }
   	    
    }
  /*验证电话号码*/
  
    var phonenumber = document.getElementById("phonenumber");
   	phonenumber.onblur = function(){
   		var phonereg =/^1[34578]\d{9}$/;//15位或18位，15位全为数字，18位前17位为数字
   		if(!(phonereg.test(phonenumber.value))){
   			phonenumber.style.border = "1px solid red";
   			phonenumber.value = phonenumber.getAttribute("warning");
   			phonenumber.style.color = "red";
   		}
   	}
   	/*密码*/
   	var pwd = document.getElementById("password");
   	pwd.onblur = function(){
   		var pwdtxt = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,16}$/;//6~16位，需组合字母、数字或符号
   		if(!(pwdtxt.test(pwd.value))){
   			pwd.style.border = "1px solid red";
   			pwd.style.color = "red";
   			pwd.value = pwd.getAttribute("warning");
   			pwd.type = "text";
   		}
   	}
   	pwd.onfocus = function(){
   		pwd.type = "password";
   		pwd.style.border = "";
   		pwd.style.color = "#333";
   		pwd.value = "";
   	}
   	/*确认密码*/
   	var repassword = document.getElementById("repassword");
   	repassword.onblur = function(){
   		if(repassword.value != pwd.value){
   			repassword.style.border = "1px solid red";
   			repassword.style.color = "red";
   			repassword.value = repassword.getAttribute("warning");
   			repassword.type = "text";
   		}
   	}
   	repassword.onfocus = function(){
   		repassword.type = "password";
   		repassword.style.border = "";
   		repassword.style.color = "#333";
   		repassword.value = "";
   	}
   	/*验证码*/
    var condefield = document.getElementById("condefield");
    condefield.onblur = function(){
    	if(condefield.value.length < 4){
    		condefield.style.border = "1px solid red";
    		condefield.style.color = "red";
    		condefield.value = condefield.getAttribute("warning");
    	}
    }
    /*提交*/
   
    var register = document.getElementById("register");
    register.onclick = function(){
   	    var form = document.getElementById("test_form");
   	    return ture;
   }
   	
}
