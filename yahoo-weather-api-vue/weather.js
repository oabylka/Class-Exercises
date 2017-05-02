document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
	    weather: '',
	    userLocation: ''
     },//data
    mounted: function() {
        $.get('https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22nome%2C%20ak%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys', function (data) {
            this.weather = data.query.results;
        }.bind(this))

    },
    methods: {
    	searchLocation: function() {
    		var searchLoc = this.userLocation
    		console.log(searchLoc);

    		$.get('https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22'+this.userLocation+'%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys', function (data) {
            this.weather = data.query.results.channel.item.forecast;
        	}.bind(this))

    		},

    	createStyle: function() {
    		return "style"
    	}
    }//methods
      
    
  });//vue
});//doc