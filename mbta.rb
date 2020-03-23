

def stops_between_stations(first_line,first_station, last_line, last_station)

    lines={
        Red: ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
        Green: ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"],
        Orange: ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]
    }

    if first_line == last_line
        return lines[first_line.to_sym].index(first_station) - lines[last_line.to_sym].index(last_station).abs
    end

  (lines[first_line.to_sym].index(first_station) - lines[first_line.to_sym].index("Park Street")).abs + (lines[last_line.to_sym].index(last_station) - lines[last_line.to_sym].index("Park Street").abs)

  
end


  p "Please inter the first line  : " 
  first_line =  gets.chomp
  p "Please inter the first station : " 
  first_station =  gets.chomp
  p "Please inter the last line : " 
  last_line =  gets.chomp
  p "Please inter the last station : " 
  last_station =  gets.chomp

 p stops_between_stations(first_line,first_station,last_line,last_station)
  
  p stops_between_stations('Red', 'Alewife', 'Red', 'Alewife')
  p stops_between_stations('Red', 'Alewife', 'Red', 'South Station') 
  p stops_between_stations('Red', 'South Station', 'Green', 'Kenmore')
