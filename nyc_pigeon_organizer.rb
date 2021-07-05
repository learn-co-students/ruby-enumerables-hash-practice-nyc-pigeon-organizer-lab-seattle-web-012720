def nyc_pigeon_organizer(data)
newHash = Hash.new

  data.each_key {|q| 

    data[q].each_key {|w| 


      w_string = w.to_s 

      data[q][w].map {|e| 

        if (newHash[e])


          if (newHash[e][q])
            #puts "\n\n\n%%%%%%%%%%%%%%%\n\nMade it to if newHash[][]"

            if (newHash[e][q].include?(w_string))
            else
              #puts "\n\n\n\nmade it here to #{w_string}\n\n\n"
              newHash[e][q].push(w_string)
            end
          else
            newHash[e][q] = []
            newHash[e][q].push(w_string)


          end


        else
          newHash[e] = Hash.new
          newHash[e][q] = []
          newHash[e][q].push(w_string)
        end




      }

    }



  }

  newHash

end




