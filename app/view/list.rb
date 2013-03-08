require_relative '../models/task'

class List


  def display_list(array)
    array.all.each_with_index do |task, i|
      p "#{task.id}. #{task.completed_at == nil ? '[x]' : '[ ]'} #{task.content}"
      #"#{i+1}. #{task.completed_at = nil ? '[x]' : '[ ]'} #{task.task}"
    end
  end



end
