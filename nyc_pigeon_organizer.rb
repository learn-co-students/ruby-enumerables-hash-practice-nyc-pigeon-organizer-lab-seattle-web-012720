def nyc_pigeon_organizer(data)
  # write your code here!
  
  pp data
  new_data={}
  data.each{|main1,main2|main2.each{|main3,names|names.each{|name|  
  new_data[name] ||={}
  new_data[name][main1] ||=[]
  new_data[name][main1] << main3.to_s
    
    
    
  }}}
  
  
  return new_data
end
