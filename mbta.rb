
# your solution here
def stops_between_stations(startLine,startStation, endLine, endStation)

    subway = {
        Red:["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
        Green:["Government Center", "Park Street", "Boylston" , "Arlington", "Copley", "Hynes", "Kenmore"],
        Orange: ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"],
    }
    if (startLine == endLine)
      (subway[startLine.to_sym].index(startStation) - subway[endLine.to_sym].index(endStation)).abs
    else
      (subway[startLine.to_sym].index(startStation) - subway[startLine.to_sym].index("Park Street")).abs + (subway[endLine.to_sym].index("Park Street") - subway[endLine.to_sym].index(endStation)).abs
    end
  
  end
  
  
  
  p stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
  p stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
  p stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6