def nyc_pigeon_organizer(data)
    hash = {}
    hash1 = {}
    hash2 = {}
    data.each do |color_gen_lives, values|
        values.each do |value, array|
            array.each do |name|
                if hash[name]==nil
                    hash[name]={}
                    hash[name][color_gen_lives]=[]
                else
                    hash[name][color_gen_lives]=[]
                end
            end
        end
    end

    hash.each do |name, values|
        values.each do |hashvalue, array|
            data.each do |color_gen_lives, values|
                values.each do |value, array|
                    array.each do |element|
                        if(name == element && hashvalue == color_gen_lives)
                            hash[name][hashvalue] << value.to_s
                        end
                    end
                end
            end
        end
    end
    return hash
end