def nyc_pigeon_organizer(data)
  # write your code here!
 
  pigeons = {}
  data.reduce({}) do |memo, (key, value)|
    array = value.reduce({}) do |memo2, (key2,value2)|
      value2.each{|n| 
        if(pigeons[n])
          if(pigeons[n][key].include?(key2.to_s) != true)
            pigeons[n][key.to_sym].push(key2.to_s)
          end
        else
          pigeons[n] = {:color => [], :gender => [], :lives => []}
          pigeons[n][key].push(key2.to_s)
        end
      }
    end
  end
  pigeons
end
