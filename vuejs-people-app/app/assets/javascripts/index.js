document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
    	people: [{
    		name: "Bob",
    		bio: "Hello world, this is me, there's nowhere else on earth I'd rather be.",
    		bioVisible: false
    	},
    	{
    		name: "Bryan",
    		bio: "I fee stupid and contagious, here we are now entertain us",
    		bioVisible: false
    	},
    	{
    		name: "Banjo",
    		bio: "I got issues, you got 'em too, so give them all to me and I'll give mine to you",
    		bioVisible: false
    	}],
    	newName: '',
      	newBio: ''
    },//data
    methods: {
    	showBio: function(person) {
    		// if (person.bioVisible == false) {
	    	// 	person.bioVisible = true;
	    	// } else {
	    	// 	person.bioVisible = false;
	    	// }
	    	person.bioVisible = !person.bioVisible; //this logic is the 5 lines above it.
    	},
    	addPerson: function() {
	        var newPerson = {
	          name: this.newName,
	          bio: this.newBio
	        };

	        this.people.push(newPerson);
	        this.newName = '';
	        this.newBio = '';
	    },//addperson
	    deletePerson: function(person) {
	    	var index = this.people.indexOf(person);
	    	this.people.splice(index, 1);
	    }
	}//methods
      
    
  });//vue
});//doc
 


