

  def stops_between_stations(start_line, start_station, end_line, end_station)
  
          lines = { "Red"=> [
              "South Station",
              "Park Street",
              "Kendall",
              "Central",
              "Harvard",
              "Porter",
              "Davis",
              "Alewife"
            ],
            "Green"=> [
              "Government Center",
              "Park Street",
              "Boylston",
              "Arlington",
              "Copley",
              "Hynes",
              "Kenmore"
            ],
            "Orange"=>[
              "North Station",
              "Haymarket",
              "Park Street",
              "State",
              "Downtown Crossing",
              "Chinatown",
              "Back Bay",
              "Forest Hills"
            ]
          }
  
                start_index = lines[start_line].index(start_station)
                end_index   = lines[end_line].index(end_station)
                         
                        if start_line == end_line
                        stops = start_index - end_index.abs
                        return stops
           
             end
             parkstreet_index_start_line = lines[start_line].index "Park Street"
             parkstreet_index_end_line  = lines[end_line].index "Park Street"
             park_street_start = (parkstreet_index_start_line - start_index ).abs
             park_street_end = ( parkstreet_index_end_line - end_index ).abs
             stops = park_street_start + park_street_end
             return stops
        end
  
       puts stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') #0
       puts stops_between_stations('Red', 'Alewife', 'Red', 'South Station') #7
       puts stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') #6
  
