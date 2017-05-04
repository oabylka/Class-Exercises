document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
      allTasks: [{
      	text: "Feed the dog",
      	completed: false
      	},
      	{
      	text: "Feed the cat", 
      	completed: false
      	},
        {
        text: "Buy a phone", 
        completed: false
        },
        {
        text: "Fix the car", 
        completed: false
        },
      	{
      	text: "Feed the kids",
      	completed: false
      	}],
      filters: [
        "all", "completed", "outstanding"
      ],
      newText: '',
      completed: false,
      tasks: []
    },//data
    mounted: function() {
      this.tasks = this.allTasks;
    },
    methods: {
    	addTask: function() {
    		var newTask = {
    			text: this.newText,
    			completed: false
    		};

    		this.allTasks.push(newTask);
    		this.newText = '';
    	},//addTask
    	removeTask: function(task) {
    		var index = this.tasks.indexOf(task);
    		this.tasks.splice(index, 1);
    	},//removeTask
    	markDone: function(task) {
    		task.completed = !task.completed;
    	},//markDone
    	numberOutstanding: function() {
    		var total = this.allTasks.length;
    		var completedTasks = 0;
    		for (i = 0; i < this.allTasks.length; i++) {
    			if (this.allTasks[i].completed == true) { 
    				completedTasks += 1;
					}
				}

    		var out = total- completedTasks;
    		return out;
    	},//numberOutstanding
    	removeCompleted: function() {
    		var incompleteTasks = [];
    		for (var i = 0; i < this.allTasks.length; i++) {
    			if (this.allTasks[i].completed == false) {
    				incompleteTasks.push(this.allTasks[i]);
    			}
    		}
    		this.tasks = incompleteTasks;
    	}, //removeCompleted
      filterTasks: function(filter) {
          var filteredTasks = [];
            if (filter == "outstanding"){
              for (var i = 0; i < this.allTasks.length; i++) {
                if (this.allTasks[i].completed == false){
                 filteredTasks.push(this.allTasks[i]);
               }
             }
             this.tasks = filteredTasks;
            } else if (filter == "completed"){
              for (var i = 0; i < this.allTasks.length; i++) {
                if (this.allTasks[i].completed == true){
                 filteredTasks.push(this.allTasks[i]);
               }
             }
             this.tasks = filteredTasks;
            } else {
              this.tasks = this.allTasks;
            }
        }//filterTasks
    }//methods
  });//Vue
});//document