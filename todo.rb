require_relative 'config/application'
require_relative 'app/models/task'
require_relative 'app/view/list'
#Controller

puts "Put your application code in #{File.expand_path(__FILE__)}"

class ListBusiness
  @@task_map_id = []
  def self.parse(args)
    #map ids in array
    map_id()
    #get class array @@task_map_id value
    id = @@task_map_id[args[1]-1]

    case args[0]
    
    when 'add'
      item = args[1..-1].join(" ")
      Task.add(item)
      display_all
    when 'delete'
      Task.delete(id)
      display_all
    when 'list'
      display_all
    when 'completed'
      display_completed
    when 'complete'
      Task.complete(id)
      display_all
    when 'uncomplete'
      Task.uncomplete(id)
      display_all
    end
  end

  def self.display_all
    List.display(Task.all)
  end

  def self.display_completed
     List.display(Task.completed)
  end

  def self.map_id
    Task.all.each do |task|
      @@task_map_id << task.id
    end
  end
end

list = Task.all
p list.class
p list


# ListBusiness.parse(ARGV)
