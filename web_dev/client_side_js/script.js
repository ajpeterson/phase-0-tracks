// Iterating through all li tags to add styles
var list = document.querySelectorAll('li'), length = list.length;

for (var i=0; i<length; i++) {
  list[i].style.fontFamily = "Courier", list[i].style.color = "green";
}

// Adding event listener for button click
function button_click (event) {
	event.target.style.border = "1px solid red";
}

var button = document.getElementsByTagName('button')
button = button[0]
button.addEventListener("click", button_click);
