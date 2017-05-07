  def complete_all_tasks!
    tasks.update_all(complete: true)
  end

  def snooze_all_tasks!
    tasks.update_all(snooze_hour!)
  end

  def total_duration
    total = 0
    tasks.each do |task|
      total += task.duration
    end
    return total
  end

 def incomplete_tasks
    array_of_tasks = []
    tasks.each do |task|
      if !task.complete
        array_of_tasks << task
      end
    end
    return array_of_tasks
  end

 def favorite_tasks
    array_of_tasks = []
    tasks.each do |task|
      if task.favorite
        array_of_tasks << task
      end
    end
    return array_of_tasks
  end

[4:50] 
rails g model List name
rails g migration AddListIdToTask list_id:integer

