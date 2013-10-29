<<<<<<< HEAD
function showPic(whichpic){
	var source = whichpic.getAttribute("href");
	var placeholder=document.getElementById("placeholder");
	placeholder.setAttribute("src",source);
	var text=whichpic.getAttribute("title");
	var description=document.getElementById("description");
	description.firstChild.nodeValue=text;
	
=======
function showPic(whichpic){
	var source = whichpic.getAttribute("href");
	var placeholder=document.getElementById("placeholder");
	placeholder.setAttribute("src",source);
	var text=whichpic.getAttribute("title");
	var description=document.getElementById("description");
	description.firstChild.nodeValue=text;
	
>>>>>>> 98595e8eb3aff674d0888e3f8dd73f03a47ce8b3
}