require 'date'

class Task
  attr_accessor :title, :description, :status

  def initialize(title, description, status)
    @title = title
    @description = description
    @status = status
  end
end


class TaskList
  attr_accessor :array

  def initialize(array=[])
    @array = array
  end

  def checker
    listDone = []
    listIncomplete = []
    @array.each do |a|
      if a.status == "Done"
        listDone << a
      else
        listIncomplete << a
      end
    end
    p listDone
    p listIncomplete
  end
end

class DueDateTask < Task

  attr_accessor :dueDate

  def initialize(title, description, status, dueDate = Date.today)
    super(title, description, status)
    @dueDate = dueDate

  end
  def dateLabel
    print @dueDate
  end
end

a_dueDate = DueDateTask.new("title", "it is a task", "done", "June")

a_dueDate.dateLabel



# taskOne = Task.new("Garbage", "Take out", "Done")
#
# taskTwo = Task.new("Mop", "Use mop", "Done")
#
# taskThree = Task.new("Clean", "Take out", "incomplete")
#
# a_taskList = TaskList.new([taskOne, taskTwo, taskThree])
#
# a_taskList.checker
