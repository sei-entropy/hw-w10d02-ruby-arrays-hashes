
# your solution here
def stops_between_stations(st_line, st_station, end_line, end_station) 
    lines = {
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
      };
    
      #p lines[:"#{st_line}"]
      stops = 0
      different_stations_stop = 0
      if st_line == end_line
        #stops = lines[:Red].index('Alewife') - lines[:Red].index('South Station')
        stops = lines[:"#{st_line}"].index(st_station) - lines[:"#{end_line}"].index(end_station)
       return p "#{stops} stops"

      elsif st_line != end_line 
        different_stations_stop = lines[:"#{st_line}"].index(st_station) - lines[:"#{st_line}"].index("Park Street")
        different_stations_stop = different_stations_stop.abs

        stops = lines[:"#{end_line}"].index(end_station) - lines[:"#{end_line}"].index("Park Street")
        stops = stops.abs
        stops = stops + different_stations_stop
        return p "#{stops} stops"
      end


end

stops_between_stations('Red', 'Alewife', 'Red', 'Alewife')  # 0
stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6
# .abs