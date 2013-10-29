<<<<<<< HEAD
window.onload = function(){
	var speed = 10;
	var tab = document.getElementById("love-persons-box");
	var tab1 = document.getElementById("love-persons-1");
	var tab2 = document.getElementById("love-persons-2");
	tab2.innerHTML=tab1.innerHTML;
	function Marquee(){
		if(tab2.offsetWidth<=tab.scrollLeft)
			tab.scrollLeft-=tab1.offsetWidth;
		else tab.scrollLeft++;
	}
	var mar = setInterval(Marquee,speed);
	tab.onmouseover=function(){clearInterval(mar)};
	tab.onmouseout=function(){mar = setInterval(Marquee,speed)};
=======
window.onload = function(){
	var speed = 10;
	var tab = document.getElementById("love-persons-box");
	var tab1 = document.getElementById("love-persons-1");
	var tab2 = document.getElementById("love-persons-2");
	tab2.innerHTML=tab1.innerHTML;
	function Marquee(){
		if(tab2.offsetWidth<=tab.scrollLeft)
			tab.scrollLeft-=tab1.offsetWidth;
		else tab.scrollLeft++;
	}
	var mar = setInterval(Marquee,speed);
	tab.onmouseover=function(){clearInterval(mar)};
	tab.onmouseout=function(){mar = setInterval(Marquee,speed)};
>>>>>>> 98595e8eb3aff674d0888e3f8dd73f03a47ce8b3
}