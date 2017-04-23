var boxes = []

function oneEach(number) {
	if (number == 1 && !boxes.includes(1)) {
		boxes.push(number);
	}
	if (number == 2 && !boxes.includes(2)) {
		boxes.push(number);
	}
	if (number == 3 && !boxes.includes(3)) {
		boxes.push(number);
	}
	if (boxes.length == 3) {
		alert("You win!");
	}
console.log(boxes);
}