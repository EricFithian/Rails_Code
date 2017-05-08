require 'rails_helper'

RSpec.describe Task, type: :model do
  describe '#toggle_complete!' do 
    it 'should change the complete status to false from true' do
      task = Task.create(complete: true)
      task.toggle_complete!
      expect(task.complete).to eq(false)
    end
    it 'should change the complete status to true from false' do
      task = Task.create(complete: false)
      task.toggle_complete!
      expect(task.complete).to eq(true)
    end
  end

  describe '#toggle_favorite!' do 
    it 'should change the favorite status to false from true' do
      task = Task.create(favorite: true)
      task.toggle_favorite!
      expect(task.favorite).to eq(false)
    end
    it 'should change the favorite status to true from false' do
      task = Task.create(favorite: false)
      task.toggle_favorite!
      expect(task.favorite).to eq(true)
    end
  end

  describe '#overdue?' do 
    it 'should be true if the task was due before the current time' do
      task = Task.create
      deadline = task.deadline
      if deadline < Time.now
        expect(task.overdue?).to eq(true)
      end
    end
    it 'should be false if the task was not due before the current time' do
      task = Task.create
      deadline = task.deadline
      if deadline > Time.now
        expect(task.overdue?).to eq(false)
      end
    end
  end

  describe '#increment_priority!' do 
    it 'should increase the priority by 1' do
      task = Task.create
      x = task
      priority = task.priority
      priority += 1
      expect(task.priority).to eq(x - 1)
    end
    it 'should decrement the priority by 1' do
      task = Task.create
      priority = task.priority
      updated = priority -= 1
      expect(task.priority - updated).to eq(1)
    end
end
