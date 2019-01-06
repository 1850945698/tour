window.onload = function(){
	/*导航栏*/
	 var nav = document.getElementById("nav");
    var aList = nav.getElementsByTagName("a");
    var meList = document.getElementsByClassName("me");
    for(var i=0; i<aList.length; i++){
	    aList[i].onmouseover = function(){
		        for(var m=0; m<meList.length; m++){
			        if(m == this.getAttribute("title")){
				        meList[m].style.display = "block";
			        }
			        else{
				        meList[m].style.display = "none";
			        }
		        }
		
	    }
    }
	
	
	/*轮播*/
	var index = 1;
	var intervalId = setInterval(function() {
		clearInterval(intervalId);
		document.getElementsByClassName("container")[0].style.marginLeft = "-1349px";
		document.getElementsByClassName("container")[0].style.transition = "all 3s";
	},  3000)

	document.getElementsByClassName("container")[0].addEventListener("webkitTransitionEnd", function() {
		if(index == 3) {
			index = 0;
			document.getElementsByClassName("container")[0].style.marginLeft = ""+ -index*1349 +"px";
			document.getElementsByClassName("container")[0].style.transition = "all 0s"
		}
		intervalId = setInterval(function() {
			
			index = index + 1;
			clearInterval(intervalId);
			document.getElementsByClassName("container")[0].style.marginLeft = ""+ -index*1349 +"px";
			document.getElementsByClassName("container")[0].style.transition = "all 3s"
		}, 3000)
	})
	/*回到顶部*/
	
	window.onscroll = function() {scrollFunction()};
 
        function scrollFunction() {
            if (document.body.scrollTop > 500 || document.documentElement.scrollTop > 500) {
                document.getElementById("gotoTop").style.display = "block";
            } else {
                document.getElementById("gotoTop").style.display = "none";
            }
        }
	function scrollshow(){
		if(document.body.scrollTop > 50 || document.documentElement.scrollTop > 50){
			gotoTop.style.display = "block";
		}else{
			gotoTop.style.display = "none";
		}
	}
	gotoTop.onclick = function(){
		document.documentElement.scrollTop = 0;
		document.body.scrollTop = 0;
		 
	}
	
	
}
