window.onload = function{
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
