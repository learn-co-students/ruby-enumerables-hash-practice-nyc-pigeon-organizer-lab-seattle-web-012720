require "pp"

def nyc_pigeon_organizer(data)
  pigeon_list = {} 
  data.each do |key, value| 
    value.each do |description, names|
        color_gender_lives = description.to_s
        names.each do |pigeon|
          if pigeon_list[pigeon]
            if pigeon_list[pigeon][key]
              pigeon_list[pigeon][key] << color_gender_lives
            else 
              pigeon_list[pigeon][key] = [color_gender_lives]
            end 
          else 
            pigeon_list[pigeon] = {key => [color_gender_lives]}
          end 
      end 
    end 
  end 
  pigeon_list
end 

