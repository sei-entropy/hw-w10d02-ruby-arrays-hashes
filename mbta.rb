

    def stops_between_stations(start_line,start_station,end_line,end_station)
        
       count = 0 
       subway = {
       Red: ['South Station', 'Park Street', 'Kendall', 'Central', 'Harvard', 'Porter', 'Davis', 'Alewife'],
       Green: ['Government Center', 'Park Street', 'Boylston', 'Arlington', 'Copley', 'Hynes', 'Kenmore'],
       Orange: ['North Station', 'Haymarket', 'Park Street', 'State', 'Downtown Crossing', 'Chinatown', 'Back Bay', 'Forest Hills']
	}
    

    if start_line == "Red" && end_line == "Red"
        start_index = subway[:Red].index(start_station)
        end_index = subway[:Red].index(end_station)
        if start_index <= end_index  
            count = end_index - start_index
        else 
            count = start_index - end_index  
        end 

    else 
        park_street_red_line = subway[:Red].index("Park Street")
        park_street_Green_line = subway[:Green].index("Park Street")
        park_street_Orange_line = subway[:Orange].index("Park Street")
        if start_line == "Green" 
            park_street_start_line = park_street_Green_line
            start_index = subway[:Green].index(start_station)
        elsif start_line == "Red" 
            park_street_start_line = park_street_red_line
            start_index = subway[:Red].index(start_station)
        else 
            park_street_start_line = park_street_Orange_line
            start_index = subway[:Orange].index(start_station)
        end
        if end_line == "Green" 
            park_street_end_line = park_street_Green_line
            end_index = subway[:Green].index(end_station)
        elsif end_line == "Red" 
            park_street_end_line = park_street_red_line
            end_index = subway[:Red].index(end_station)
        else 
            park_street_end_line = park_street_Orange_line
            end_index = subway[:Orange].index(end_station)
        end
        
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