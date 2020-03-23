

    def stops_between_stations(start_line,start_station,end_line,end_station)
        
       count = 0 
       subway = {
       Red: ['South Station', 'Park Street', 'Kendall', 'Central', 'Harvard', 'Porter', 'Davis', 'Alewife'],
       Green: ['Government Center', 'Park Street', 'Boylston', 'Arlington', 'Copley', 'Hynes', 'Kenmore'],
       Orange: ['North Station', 'Haymarket', 'Park Street', 'State', 'Downtown Crossing', 'Chinatown', 'Back Bay', 'Forest Hills']
	}
    


    start_index = subway[start_line.to_sym].index(start_station)
    end_index = subway[end_line.to_sym].index(end_station)

    if start_line ==  end_line 
        
        if start_index <= end_index  
            count = end_index - start_index
        else 
            count = start_index - end_index  
        end 

    else 
        


        park_street_start_line = subway[start_line.to_sym].index('Park Street')
        park_street_end_line = subway[end_line.to_sym].index('Park Street')

        
        if park_street_start_line <= start_index
            to_park_station_startr = start_index - park_street_start_line
          else 
            to_park_station_startr = park_street_start_line - start_index
          end

          if park_street_end_line <= end_index
            to_park_station_end = end_index - park_street_end_line
          else 
            to_park_station_end = park_street_end_line - end_index
          end
             count = to_park_station_startr + to_park_station_end
        end
         

        return " total number of stops for the trip #{count}"  
  
      end
    

    puts stops_between_stations("Red", 'Alewife', 'Red', 'Alewife') 
    puts stops_between_stations('Red', 'Alewife', 'Red', 'South Station')
    puts stops_between_stations('Red', 'South Station', 'Green', 'Kenmore')