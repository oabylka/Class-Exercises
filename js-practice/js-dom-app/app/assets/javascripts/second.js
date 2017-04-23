var limit = 5
var clickCount = 0

function fiveClick(count) {
	clickCount = count+clickCount

	if (clickCount == 5) {
		alert("You won!");
	}

}
