sum = 0

function countSum(integer) {
	sum += integer;
	console.log(sum);

	var sumDiv = document.querySelector('#sum');
	sumDiv.innerHTML = sum;
}

function resetTotal(){
	total = 0;
	var sumDiv = document.querySelector('#sum');
	sumDiv.innerHTML = total;
}