
# your solution here
def stops_between_stations(start_line, start_station, end_line, end_station) 
    lines = {
        Red: [ "South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife" ],
        Green: ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore" ],
        Orange: [ "North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]
      }
      start_station = lines [start_line.to_sym].index(start_station)
      end_station = lines [end_line.to_sym].index(end_station)
      
      if (start_line == end_line)
        stops = start_station - end_station 
            return stops
          end
          start_line = lines [start_line.to_sym].index("Park Street")
          end_line = lines [end_line.to_sym].index("Park Street")

          stop1 = start_station - start_line
          stop2 = end_station - end_line

            stops = stop1 + stop2
            return stops
            end
            puts stops_between_stations("Red", "Alewife", "Red", "Alewife")
            puts stops_between_stations("Red", "Alewife", "Red", "South Station")
            puts stops_between_stations("Red", "South Station", "Green", "Kenmore") 