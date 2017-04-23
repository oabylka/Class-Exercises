var boxes = []

function allTen(number) {
	var boxMatch = [1,2,3,4,5,6,7,8,9,10]
	
	if (number == 1 && !boxes.includes(1)) {
		boxes.push(number);
	}
	if (number == 2 && !boxes.includes(2)) {
		boxes.push(number);
	}
	if (number == 3 && !boxes.includes(3)) {
		boxes.push(number);
	}
	if (number == 4 && !boxes.includes(4)) {
		boxes.push(number);
	}
	if (number == 5 && !boxes.includes(5)) {
		boxes.push(number);
	}
	if (number == 6 && !boxes.includes(6)) {
		boxes.push(number);
	}
	if (number == 7 && !boxes.includes(7)) {
		boxes.push(number);
	}
	if (number == 8 && !boxes.includes(8)) {
		boxes.push(number);
	}
	if (number == 9 && !boxes.includes(9)) {
		boxes.push(number);
	}
	if (number == 10 && !boxes.includes(10)) {
		boxes.push(number);
	}

	if (boxes == boxMatch) {
		alert("You win!");
	}

}
console.log(boxes);
