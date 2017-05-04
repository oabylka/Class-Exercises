// document.addEventListener("DOMContentLoaded", function(event) { 
//   var app = new Vue({
//     el: '#app',
//     data: {
//       reviews: [{
//       	text: "Feed the dog",
//       	rating: 5
//       	}, 
//       	{
//       	text: "Feed the cat", 
//       	rating: 3
//       	},
//       	{
//       	text: "Feed the kids",
//       	rating: 4
//       	}
//       ],
//       newReview: ''
//     },
//     methods: {
//     	addReview: function() {
//     		if (this.newReview != '') {
// 	    		this.reviews.push(this.newReview);
// 	    		this.newReivew = '';
//     		}
//     	},
//     	removeReview: function(task) {
//     		var index = this.reviews.indexOf(task);
//     		this.reviews.splice(index, 1);
//     	}
//     }
//   });
// });