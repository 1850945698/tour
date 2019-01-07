window.onload = function(){
	/*导航栏*/
	var nav = document.getElementById("nav");
	var liList = nav.getElementsByTagName("li");
	for(var i=0; i<liList.length; i++){
		if(liList[i].getElementsByTagName("ul").length){
			liList[i].onmouseover = function(){
				this.getElementsByTagName("ul")[0].style.display = "block";
			}
			liList[i].onmouseout = function(){
				this.getElementsByTagName("ul")[0].style.display = "none";
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
	/* 目的地推荐*/
	
	var tabtitle = document.getElementById("tabtitle");
    var spanList = tabtitle.getElementsByTagName("span");
    var tablist = document.getElementsByClassName("tablist");
    for(var i=0; i<spanList.length; i++){
	    spanList[i].onmouseover = function(){
		    for(var j=0; j<spanList.length; j++){
			    spanList[j].className = "";
		    }
		        this.className = "now";
		        for(var m=0; m<tablist.length; m++){
			        if(m == this.getAttribute("title")){
				        tablist[m].style.display = "block";
			        }
			        else{
				        tablist[m].style.display = "none";
			        }
		        }
		
	    }
    }
    /*周边游*/
   var inp  = document.getElementsByClassName("inp")[0];
   var opt = document.getElementsByClassName("opt")[0];
   inp.onclick = function(){
		if(opt.style.display == "block"){
			opt.style.display = "none";
		}else{
			opt.style.display = "block";
		}
	}
    
    var opt = document.getElementById("opt");
    var aList = opt.getElementsByTagName("a");
    var content2 = document.getElementsByClassName("content2");
    for(var i=0; i<aList.length; i++){
	    aList[i].onclick = function(){
		        for(var a=0; a<content2.length; a++){
			        if(a == this.getAttribute("title")){
				        content2[a].style.display = "block";
			        }
			        else{
				        content2[a].style.display = "none";
			        }
		        }
		
	    }
    }
    
    
}
