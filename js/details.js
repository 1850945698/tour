window.onload = function(){
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
	
	/*tab 切换*/
	
}
