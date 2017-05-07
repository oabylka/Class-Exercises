require 'rails_helper'

RSpec.describe Task, type: :model do

  describe '#toggle_complete' do
  	it 'should mark a task complete or incomplete depending on current setting' do
  		task = Task.new
  		if task.complete == true
  		expect(task.toggle_complete!).to eq(false)
  		else 
  		expect(task.toggle_complete!).to eq(true)
  		end
  	end
  end

  describe '#toggle_favorite' do
  	it 'should mark a task favorite or not favorite depending on current setting' do
  		task = Task.new
  		if task.favorite == true
  		expect(task.toggle_favorite!).to eq(false)
  		else 
  		expect(task.toggle_favorite!).to eq(true)
  		end
  	end
  end
  		
  describe '#overdue' do
  	it 'should tell if current time is past the deadline - returns true - deadline set to 1 hour prior' do
  		task = Task.new
  		time = Time.now
  		task.deadline = Time.now - 1.hour
  		expect(task.overdue?).to eq(true)
  	end
  end

  describe '#overdue' do
  	it 'should tell if current time is past the deadline - returns false - deadline set to 3 hours ahead' do
  		task = Task.new
  		task.deadline = Time.now + 3.hours
  		expect(task.overdue?).to eq(false)
  	end
  end	

  describe '#increment_priority!' do
  	it 'should return true because priority is less than 10' do
  		task = Task.new
  		task.priority = 3
  		expect(task.increment_priority!).to eq(true)
  	end
  end

  describe '#increment_priority!' do
  	it 'should return false because priority is more than 10' do
  		task = Task.new
  		task.priority = 11
  		expect(task.increment_priority!).to eq(nil)
  	end
  end

  describe '#decrement_priority!' do
  	it 'should return nil because the priorty is 1' do
  		task = Task.new
  		task.priority = 1
  		expect(task.decrement_priority!).to eq(nil)
  	end
  end

  describe '#snooze_hour!' do
  	it 'should return nil because the priorty is 1' do
  		task = Task.new
  		task.deadline = Time.now
  		expect(task.snooze_hour!).to eq(true)
  	end
  end

end

