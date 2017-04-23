function changeColor(color) {
	var page = document.querySelector('body');

	page.style['background-color'] = color;
	console.log(color);

	var h2 = document.querySelector('h2');
	if (color == 'yellow') {
		h2.innerHTML = "It's morning!";
	}
	if (color == 'orange') {
		h2.innerHTML = "It's afternoon!";
	}
	if (color == 'black') {
		h2.innerHTML = "It's night!";
	}
}
