# const stopsBetweenStations = function (startLine, startStation, endLine, endStation) {
#      const subwayLines ={
#       Red:
     
#       ['South Station', 'Park Street','Kendall','Central','Harvard','Porter','Davis', 'Alewife'],
     
#      Green:
     
#      ['Government Center', 'Park Street','Boylston', 'Arlington', 'Copley', 'Hynes','Kenmore'],
     
#      Orange:
#      ['North Station', 'Haymarket', 'Park Street','State','Downtown Crossing', 'Chinatown', 'Back Bay', 'Forest Hills']
     
#      };
#      count = 0;

#      const indexOfstartStation = subwayLines[startLine].indexOf(startStation);
#      const indexOfEndStation = subwayLines[endLine].indexOf(endStation);

#      if (startLine == endLine ){
#           count =  Math.abs(indexOfEndStation - indexOfstartStation)
#      }
#      else {
#           count =  Math.abs((subwayLines[startLine].indexOf('Park Street') - indexOfstartStation))
#            +  Math.abs((indexOfEndStation - subwayLines[endLine].indexOf('Park Street')))
     
#      }
#      console.log(count); 

# }


# your solution here
def stops_between_stations (start_line, start_station, end_line, end_station)
    
    subway_lines = {
        "Red" => 
        ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],

        "Green" => 
        ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"],

        "Orange" =>
         ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]
      }
      count = 0

      index_of_start_station = subway_lines[start_line].index(start_station)
      index_end_station = subway_lines[end_line].index(end_station)

        if start_line == end_line 
             count =  (index_end_station - index_of_start_station).abs
              
        else 
            count =  ((subway_lines[start_line].index('Park Street') - index_of_start_station)).abs
            count  +=  ((index_end_station - subway_lines[end_line].index('Park Street'))).abs
      end
end

p stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') 
p stops_between_stations('Red', 'Alewife', 'Red', 'South Station') 
p stops_between_stations('Red', 'South Station', 'Green', 'Kenmore')
