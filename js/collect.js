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
}
