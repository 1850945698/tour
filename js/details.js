window.onload = function(){
	var bannerList = [
		{
			"linksrc":"http://sina.com",
			"imgsrc": "img/images/1.jpg"
		},
		{
			"linksrc":"http://sina.com",
			"imgsrc": "img/images/2.jpg"
		},
		{
			"linksrc":"http://sina.com",
			"imgsrc": "img/images/3.jpg"
		},
		{
			"linksrc":"http://sina.com",
			"imgsrc": "img/images/4.jpg"
		}
	]

	var index = 0;	
	var links = document.getElementById("links");
	var bannerimg = document.getElementById("bannerimg");	
	function changeImg() {
		if(index == 3){
			index = 0;
		}
		else {
			index = index + 1;
		}
		links.href = bannerList[index].linksrc;
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
