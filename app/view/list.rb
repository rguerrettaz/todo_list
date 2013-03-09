require_relative '../../config/application'
require 'pp'

# require_relative '../models/task'

class List

  def self.display(array)
    array.each_with_index do |task, i|
      puts "#{(i+1).to_s.rjust(2)}.  #{task.completed_at == nil ? '[ ]' : '[x]'} #{task.content}"
    end
  end
end

# Task.all.each do |i|
#   p i.content
# end
# test_list = List.new
# test_list.display_list(Task.all)
