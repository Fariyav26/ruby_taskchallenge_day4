require 'rspec'
require_relative 'task'

describe Task do

  it "can be created without raising an error" do
    expect{Task.new}.to_not raise_error
  end

  it "can set title and retrieve it" do
    # create a new task and assign it to the variable "t"
    t = Task.new

    # after task is created, title should be an empty string
    expect(t.title).to be_a String
    expect(t.title).to eq ""

    # should be able to set and get title
    t.title = "Do Laundry"
    expect(t.title).to eq "Do Laundry"
  end

  it "can set description and retrieve it" do
    # create a description and assign it to the variable "t"
    t = Task.new
    t.title = "Do Laundry"

    # after task is created, the description should be an empty string
    expect(t.description).to eq ""
    expect(t.description).to be_a String

    # should be able to set and get a description
    t.description = "make sure you dont mix lights and darks"
    expect(t.description).to eq "make sure you dont mix lights and darks"
  end

  it "should not be completed when first created" do
    # create a new task and assign it to the variable "t"
    t = Task.new

    # after the task is created, the default value of the task should be unmarked/undone
    expect(t.completed).to be false
  end


  it "can be marked as completed" do
    # create a new task and assign it to the variable "t"
    t = Task.new

    # mark the task as completed
    t.completed = true

    # after the task is created, if the task is completed, then we expect true
    expect(t.completed).to be true
  end

  it "can print its done and show a status" do
    #create a new task and assign it to be the variable "t"
    t = Task.new
    t.title = "do laundry"
    t.description = "dont mix lights and darks"
    t.completed = true

    # after the task is created, we will expect the title and discription to return
    # expect(what_title_is_right_now).to eq what_title_should_be
    expect(t.status).to eq "Title: do laundry, Description: dont mix lights and darks, Completed: true"
  end

end #end of task class
