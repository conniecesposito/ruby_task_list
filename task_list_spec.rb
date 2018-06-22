require 'rspec'
require_relative 'task_list'


# Story: As a developer, I can create a Task.
#

describe "Task" do
  it "has to be real" do
    expect{Task.new("title", "it is a task", "done")}.to_not raise_error
  end
# Story: As a developer, I can give a Task a title and retrieve it.
#

it "has a title" do
  a_task = Task.new("title", "it is a task", "done")
  expect(a_task.title).to be_a String
  end





# Story: As a developer, I can give a Task a description and retrieve it.
#

it "has a description" do
  a_task = Task.new("title", "it is a task", "done")
  expect(a_task.description).to be_a String
  end



# Story: As a developer, I can mark a Task done.
# Story: As a developer, when I print a Task that is done, its status is shown.

it "has a status" do
  a_task = Task.new("title", "it is a task", "done")
  expect(a_task.status).to be_a String

  end
end


# Story: As a developer, I can add all of my Tasks to a TaskList.
# Hint: A TaskList has-many Tasks

describe "TaskList" do

it "has to be real" do
  expect{TaskList.new}.to_not raise_error
  end


# Story: As a developer with a TaskList, I can get the completed items.

it "has an array" do
  a_taskList = TaskList.new
  expect(a_taskList.array).to be_a Array
  end


it "has a checker" do
  a_taskList = TaskList.new
  expect(a_taskList.checker).to be_a Array
  end
end

# Story: As a developer, I can create a DueDateTask, which is-a Task that has-a due date.
# Hint: Use the built-in Ruby Date class
#
describe "DueDateTask" do

  it "has to be real" do
    expect{DueDateTask.new("title", "it is a task", "done", "June")}.to_not raise_error
  end

it "has a due date" do
  a_dueDate = DueDateTask.new("title", "it is a task", "done", "June")
  expect(a_dueDate.dueDate).to be_a String
  end


# Story: As a developer, I can print an item with a due date with labels and values.
# Hint: When implementing to_s, use super to call to_s on the super class.

it "has a date with labels" do
  a_duedate = DueDateTask.new
  expect(a_dueDate.dateLabel).to be_a String
  end
end
# Story: As a developer, I can add items with due dates to my TaskList.
# Hint: Consider keeping items with due dates separate from the other items.
#
# Story: As a developer with a TaskList, I can list all the not completed items that are due today.
#
# Story: As a developer with a TaskList, I can list all the not completed items in order of due date.
#
# Story: As a developer with a TaskList with and without due dates, I can list all the not completed items in order of due date, and then the items without due dates.
