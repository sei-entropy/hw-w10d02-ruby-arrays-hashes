
# your solution here
def stops_between_stations (start_line, start_station, end_line, end_station)
    subway_lines = {
        Red: ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
        Green: ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"],
        Orange: ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]}
    
        if start_line == end_line 
        subway_lines[start_line.to_sym].index(start_station) - subway_lines[end_line.to_sym].index(end_station)
        else
            stops = 0
            num_of_index = subway_lines[start_line.to_sym].index(start_station)
            subway_lines[start_line.to_sym].rotate!(index)
        stops = subway_lines[start_line.to_sym].index("Park Street") - subway_lines[start_line.to_sym].index(start_station)
    
        num_of_index = subway_lines[end_line.to_sym].index(end_station)
            subway_lines[end_line.to_sym].rotate!(index)
         stops += subway_lines[end_line.to_sym].length - subway_lines[end_line.to_sym].index("Park Street")    
        end   
      end
    
    p "Enter line of your station"
    start_line = gets.chomp
    p "Enter your current station"
    start_station = gets.chomp
    
    p "Enter end line of your station"
    end_line = gets.chomp
    p "Enter your last station "
    end_station = gets.chomp
    
    p stops_between_stations(start_line,start_station,end_line,end_station)