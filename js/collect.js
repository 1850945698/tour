window.onload = function(){
	/*导航栏*/
	var ulList = document.getElementById("ullist");
	var liList = ulList.getElementsByTagName("li");
	for(var a=0; a<liList.length; a++){
		liList[a].onmouseover = function(){
			this.className = "now";
			
		}
		liList[a].onmouseout = function(){
			this.className = "";
			liList[1].className = "isnow";
			
		}
		
	}
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
}
