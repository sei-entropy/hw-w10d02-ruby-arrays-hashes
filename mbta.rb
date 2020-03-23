
# your solution here
def stops_between_stations(start_line, start_station, end_line, end_station)

        subway_lines = {
          Red: [
            "South Station",
            "Park Street",
            "Kendall",
            "Central",
            "Harvard",
            "Porter",
            "Davis",
            "Alewife"
          ],
          Green: [
            "Government Center",
            "Park Street",
            "Boylston",
            "Arlington",
            "Copley",
            "Hynes",
            "Kenmore"
          ],
          Orange: [
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

        start_station_index = subway_lines[start_line.to_sym].index(start_station)
        end_station_index   = subway_lines[end_line.to_sym].index(end_station)
      
        if (start_line == end_line)
          total_stops = (start_station_index - end_station_index).abs
          return total_stops
        end
      
        start_line_park_street_index = subway_lines[start_line.to_sym].index("Park Street")
        end_line_park_street_index  = subway_lines[end_line.to_sym].index("Park Street")
      
        stops_until_park_street = (start_line_park_street_index - start_station_index ).abs
        stops_until_destination = ( end_line_park_street_index - end_station_index ).abs
      
        total_stops = stops_until_park_street + stops_until_destination
        return total_stops
      end
    
     puts stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
     puts stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
     puts stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6
    
   


