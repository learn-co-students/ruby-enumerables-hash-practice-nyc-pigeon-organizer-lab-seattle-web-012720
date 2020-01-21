require 'pry'

def nyc_pigeon_organizer(data)
  final_pigeon_list = {}
#Gather Pigeon names out of given array
  data.each do |attributes, value|
    value.each do |stats, names|
      names.each do |name|
        if final_pigeon_list[name] == nil
          final_pigeon_list[name] = {}
        end
        if final_pigeon_list[name][attributes] == nil
          final_pigeon_list[name][attributes] = []
        end
        final_pigeon_list[name][attributes].push(stats.to_s)
      end
    end
  end
final_pigeon_list
end
