window.onload = function(){
	var bannerList = [
		{
			"imgsrc": "img/images/1.jpg"
		},
		{
			"imgsrc": "img/images/2.jpg"
		},
		{
			"imgsrc": "img/images/3.jpg"
		},
		{
			"imgsrc": "img/images/4.jpg"
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
	var intervalId = setInterval(changeImg,1000)

	bannerimg.onmouseover = function() {
		clearInterval(intervalId);
	}
	bannerimg.onmouseout = function() {
		intervalId = setInterval(changeImg, 1000);
	}
}
