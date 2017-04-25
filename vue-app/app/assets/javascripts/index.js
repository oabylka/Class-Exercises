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
    		this.reviews.push(this.newReview)
    	}
    }
  });
});