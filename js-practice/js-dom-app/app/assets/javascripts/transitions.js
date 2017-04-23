function changeColor() {
	var box = document.querySelector('.box');

	setTimeout(function() {
		box.style['padding'] = '30px';
		setTimeout(function() {
			box.style['background-color'] = 'blue';
			box.style['padding'] = '10px';
			setTimeout(function() {
				box.style['background-color'] = 'red';
				box.style['padding'] = '20px';
			},2000)
		},2000)
	},2000)

}

function myMove() {
	var box2 = document.querySelector('#myAnimation');
	setInterval(function() {
      box2.style['height'] = '300px';
      box2.style['width'] = '300px';
      box2.style['backgroun'] = 'blue';
}, 2000);
}

function startAnimation() {
	setInterval(changeColor(),3000);
}