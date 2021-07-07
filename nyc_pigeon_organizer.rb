def nyc_pigeon_organizer(data)
 list = []
  data[:color].each{ |name| list.push(name) }
  name_list = []
  list.length.times do |block|
    list[block][1].length.times do |n|
      name_list.push(list[block][1][n])
    end
  end
  name_list.uniq
  pigeon_list = {}
  name_list.length.times do |names|
    key = name_list[names]
    pigeon_list[key] = {:color=>[],:gender=>[],:lives=>[]}
  end
  puts name_list
  name_list.length.times do |index|
    data.each do |demo, info|
      info.each do |abj,name|
        if name.include?(name_list[index])
          if !(pigeon_list[name_list[index]][demo].include?(abj.to_s))
            pigeon_list[name_list[index]][demo].push(abj.to_s)
          end
        end
      end
    end
  end
  return pigeon_list
end