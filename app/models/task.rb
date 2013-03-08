require_relative '../../config/application'
require 'date'


class Task < ActiveRecord::Base

  def self.add(task)
    self.create({:content =>task })  
  end

  def self.update_item(id_num, task)
    self.update(id_num, :content=>task)
  end
  
  # self.all

  def self.completed
    self.where(:completed_at != nil)
  end

  def self.complete(id_num)
    self.update(id_num, :completed_at => DateTime.now)
  end

  def self.uncomplete(id_num)
    self.update(id_num, :completed_at => nil)  
  end
  
  def self.delete(id_num)
    self.update(id_num, :deleted_at => DateTime.now)
  end

end

# p Task.update_view_id

# Task.all.each_with_index do |task, i|
#   p "#{task.id}. #{task.completed_at = nil ? '[x]' : '[ ]'} #{task.content}"
#   #"#{i+1}. #{task.completed_at = nil ? '[x]' : '[ ]'} #{task.task}"
# end
# p Task.add("Scrub the kitchen floor")
# p Task.update_item(1, "WASHO YO MOUTH")
# p Task.update()


# Task.delete(array[0])


# puts Task.add

# array = [25, 50, 100]

# array.each do |i|

# end


#MAP ID TO VIEW DISPLAY ID
# array = []
# Task.all.each do |task|
#   array << task.id
# end
# array[0] => 323


# p Task.completed
