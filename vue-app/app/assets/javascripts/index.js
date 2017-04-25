document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
      reviews: [
      	"Feed the dog", 
      	"Feed the cat", 
      	"Feed the kids"
      ],
      newReview: ''
    },
    methods: {
    	addReview: function() {
    		if (this.newReview != '') {
	    		this.reviews.push(this.newReview);
	    		this.newReivew = '';
    		}
    	},
    	removeReview: function(task) {
    		var index = this.reviews.indexOf(task);
    		this.reviews.splice(index, 1);
    	}
    }
  });
});