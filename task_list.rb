require_relative "task"

class TaskList

  def initialize
    @complete_list = []
    @incomplete_list = []
  end

  # getting the current list
  def complete_list
    #returing the contents of the variable @list
    @complete_list
  end

  # getting the current list
  def incomplete_list
    #returing the contents of the variable @list
    @incomplete_list
  end

  def add_to_list(new_task)
    # if task is done
    # shovel it into the completed list
    if new_task.completed == true
      @complete_list << new_task
    # if task is not done
    # shovel it into the complete list
    else
      @incomplete_list << new_task
    end
  end

  def list
    @complete_list + @incomplete_list
  end

end # end of TaskList class
