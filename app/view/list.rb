require 'pp'

require_relative '../models/task'

class List

  attr_reader :array

  def display_list(list)
    list.each_with_index do |task, i|
      p "#{task.id}. #{task.completed_at == nil ? '[ ]' : '[x]'} #{task.content}"
      #"#{i+1}. #{task.completed_at = nil ? '[x]' : '[ ]'} #{task.task}"
    end
  end
end

# Task.all.each do |i|
#   p i.content
# end
# test_list = List.new
# test_list.display_list(Task.all)
