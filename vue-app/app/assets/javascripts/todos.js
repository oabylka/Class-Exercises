document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
      tasks: [{
      	text: "Feed the dog",
      	completed: false
      	},
      	{
      	text: "Feed the cat", 
      	completed: false
      	},
      	{
      	text: "Feed the kids",
      	completed: false
      	}],
      newText: '',
      completed: false
    },
    methods: {
    	addTask: function() {
    		var newTask = {
    			text: this.newText,
    			completed: false
    		};

    		this.tasks.push(newTask);
    		this.newText = '';
    	},
    	removeTask: function(task) {
    		var index = this.tasks.indexOf(task);
    		this.tasks.splice(index, 1);
    	},
    	markDone: function(task) {
    		task.completed = !task.completed;
    	},
    	numberOutstanding: function() {
    		var total = this.tasks.length;
    		var completedTasks = 0;
    		for (i = 0; i < this.tasks.length; i++) {
    			if (this.tasks[i].completed == true) { 
    				completedTasks += 1;
					}
				}

    		var out = total- completedTasks;
    		return out;
    	},
    	removeCompleted: function() {
    		var incompleteTasks = [];
    		for (var i = 0; i < this.tasks.length; i++) {
    			if (this.tasks[i].completed == false) {
    				incompleteTasks.push(this.tasks[i]);
    			}
    		}
    		this.tasks = incompleteTasks;
    	}
    }
  });
});