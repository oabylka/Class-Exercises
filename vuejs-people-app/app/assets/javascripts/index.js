document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
    	people: [],
        newName: '',
        newBio: '',
        errors: [],
        nameFilter: ''
    },//data
    mounted: function() {
        $.get('http://localhost:3000/api/v1/people.json', function (result) {
            this.people = result;
        }.bind(this))
    },
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
	        // var newPerson = {
	        //   name: this.newName,
	        //   bio: this.newBio
	        // };
            // below code clears out the input boxes
	        // this.people.push(newPerson);
	        // this.newName = '';
	        // this.newBio = '';

            var params = {
                name: this.newName,
                bio: this.newBio
            }

            $.post('http://localhost:3000/api/v1/people.json', params, function(result) {
                this.people.push(result);
                this.newName = '';
                this.newBio = '';
                this.errors = [];
            }.bind(this)).fail(function (result) {
                //responseJSON is the variable that comes back in the console log
                this.errors = result.responseJSON.errors;
            }.bind(this))
	    },//addperson

        isValidPerson: function(person) {
            return person.name.toLowerCase().includes(this.nameFilter.toLowerCase());
        }
	    // deletePerson: function(person) {
	    // 	var index = this.people.indexOf(person);
	    // 	this.people.splice(index, 1);

     //        var params = {
     //            name: this.newName,
     //            bio: this.newBio
     //        }

     //        $.delete('http://localhost:3000/api/v1/people.json', params, function(result)) {

     //        }
	    // }
	}//methods
      
    
  });//vue
});//doc
 


