function firstTask() {
	console.log("First is done!");
}

function secondTask() {
	console.log("Second is done!");
}

function thirdTask() {
	console.log("Third is done!");
}

// setTimeout(firstTask,2000);
// setTimeout(secondTask,4000);
// setTimeout(thirdTask,6000);

var timeout = 2000

//anonmymous functions and callback functions

setTimeout(function() {
	console.log("first is done");

	setTimeout(function() {
		console.log("second is done");

		setTimeout(function() {
			console.log("third is done");
		},timeout)
	}, timeout)
	
},timeout)