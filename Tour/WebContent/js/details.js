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
	/*轮播*/
	var bannerList = [
		{
			"imgsrc": "../img/pic/qxs.jpg"
		},
		{
			"imgsrc": "../img/pic/qxs1.jpg"
		},
		{
			"imgsrc": "../img/pic/qxs2.jpg"
		},
		{
			"imgsrc": "../img/pic/qxs3.jpg"
		}
	]

	var index = 0;	
	var bannerimg = document.getElementById("bannerimg");	
	function changeImg() {
		if(index == 3){
			index = 0;
		}
		else {
			index = index + 1;
		}
		
		bannerimg.src = bannerList[index].imgsrc;
	}
	var intervalId = setInterval(changeImg,3000)

	bannerimg.onmouseover = function() {
		clearInterval(intervalId);
	}
	bannerimg.onmouseout = function() {
		intervalId = setInterval(changeImg, 3000);
	}
	
	
	/*收藏*/
	var collicon = document.getElementsByClassName("coll_icon")[0];
	collicon.onclick = function(){
		collicon.style.backgroundImg = "../img/pic/scstar.png";
		collicon.style.backgroundPosition = "0px -24px";
	}
	
}
