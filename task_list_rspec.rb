require 'rspec'
require_relative 'task_list'

describe TaskList do

  it "can be real" do
    expect{TaskList.new}.to_not raise_error
  end

  it "should be blank when we first create it" do
    # create a new TaskList and assign it to the variable "tl"
    l = TaskList.new

    # after TaskList is created, list should be an empty array
    expect(l.list.length).to eq 0
  end

  it "can add a task to a list" do
    # create a new TaskList and assign it to the variable "l"
    l = TaskList.new
    # create a new task
    t = Task.new
    t.title = "Get groceries"

    # after TaskList is created, list should be an empty array
    expect(l.list.length).to eq 0

    # add task to list
    l.add_to_list(t)

    # after task is added to list, list should have one task
    expect(l.list.length).to eq 1
  end

  it "can get a list of the completed items" do
    # creating a new TaskList
    l = TaskList.new
    #create a new task
    t = Task.new
    t.title = "Walk dog"
    t.completed = true

    # expects the initial complete/incomplete list to be empty (0)
    expect(l.complete_list.length).to eq 0
    expect(l.incomplete_list.length).to eq 0

    # adding a task to the list
    l.add_to_list(t)

    # expect the complete list to have one task ('walk dog' = completed/true)
    expect(l.complete_list.length).to eq 1
    expect(l.incomplete_list.length).to eq 0
  end

  it "can get a list of the incompleted items" do
    # creating a new TaskList
    l = TaskList.new
    #create a new task
    t = Task.new
    t.title = "clean dishes"
    t.completed = false

    # expects the initial complete/incomplete list to be empty (0)
    expect(l.complete_list.length).to eq 0
    expect(l.incomplete_list.length).to eq 0

    # adding a task to the list
    l.add_to_list(t)

    # expect the complete list to have one task ('clean dishes' = incompleted/false)
    expect(l.complete_list.length).to eq 0
    expect(l.incomplete_list.length).to eq 1
  end

end #end of TaskList class
