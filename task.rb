class Task

  def initialize
    # setting the title to an empty string
    @title = ""

    # setting the description to an empty string
    @description = ""

    # setting the task to be not completed by default
    @completed = false

  end

  # setting a new title
  def title=(new_title)
    # assigning a new title to the @title variable
    @title = new_title
  end

  # getting the current title
  def title
    #returning the contents of the variable @title
    @title
  end

  # setting a new description
  def description=(new_description)
    # assigning a new description to the @description variable
    @description = new_description
  end

  # getting the current value of description
  def description
    @description
  end

  # setting the task to have a new value for completed
  def completed=(new_value)
    @completed = new_value
  end

  # returning whether a task is not completed
  def completed
    @completed
  end

  # return the current title and discription, and a default of not completed as false.
  def status
    "Title: #{@title}, Description: #{@description}, Completed: #{@completed}"
  end

end #the end of class Task
