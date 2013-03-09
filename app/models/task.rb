
require 'date'


class Task < ActiveRecord::Base

  def self.add(task)
    self.create({:content =>task })  
  end

  def self.update_item(id_num, task)
    self.update(id_num, :content=>task)
  end

  def self.all_less_deleted

    self.all.reject { |row| row.deleted_at != nil }
    # self.where("deleted_at = ''")
    # self.where('deleted_at' => nil)
  end
  
  def self.completed
    self.all.reject(:completed_at != nil)
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
