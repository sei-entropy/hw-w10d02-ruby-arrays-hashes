
# your solution here
def stops_between_stations (stLine, stStation, endLine, endStation)
    stops = 0
    lines = {
        "Red" => [
          "South Station",
          "Park Street",
          "Kendall",
          "Central",
          "Harvard",
          "Porter",
          "Davis",
          "Alewife"
        ],
        "Green" => [
          "Government Center",
          "Park Street",
          "Boylston",
          "Arlington",
          "Copley",
          "Hynes",
          "Kenmore"
        ],
        "Orange" => [
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
    #   user to input their start line, start station, end line, and end station.
    # puts "What is your start line "  
    # stLine = gets
    # puts "What is your start station "  
    # stStation = gets
    # puts "What is your end line "  
    # endLine = gets
    # puts "What is your end station "  
    # endStation = gets


      if stLine === endLine 
        stops = (lines[stLine].find_index(stStation) - lines[endLine].find_index(endStation)).abs()
        p stops 
     end
      if stLine != endLine
        stops = (lines[stLine].find_index(stStation) - lines[stLine].find_index("Park Street")).abs()
        stops += (lines[endLine].find_index(endStation) - lines[endLine].find_index("Park Street")).abs()
        p stops
      end

end
# stops_between_stations
stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6