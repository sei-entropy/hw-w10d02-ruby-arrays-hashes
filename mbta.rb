
# your solution here
def stops_between_stations (stLine, stStation, endLine, endStation)
    lines = {
      Red: [ "South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife" ],
      Green: [ "Government Center", "Park Street", "Boylston",  "Arlington", "Copley", "Hynes", "Kenmore" ],
      Orange: [ "North Station",  "Haymarket", "Park Street", "State", "Downtown Crossing",  "Chinatown", "Back Bay", "Forest Hills" ],
    }
    if stLine == endLine
        stops = ( lines[stLine.to_sym].index(stStation) - lines[endLine.to_sym].index(endStation) ).abs
        print stops , "stops ";
    
    
    else stLine != endLine 
        stops = ( lines[stLine.to_sym].index(stStation) - lines[stLine.to_sym].index("Park Street") ).abs 
        stops += ( lines[endLine.to_sym].index(endStation) - lines[endLine.to_sym].index("Park Street") ).abs 
        print stops , "stops ";
    end
end

# Double Bonus
p " Enter The Start Line ";
stLine = gets.chomp

p " Enter The Start Station ";
stStation = gets.chomp

p " Enter The End Line ";
endLine = gets.chomp

p " Enter The End Station ";
endStation = gets.chomp

## Test the double Bonus
stops_between_stations(stLine, stStation, endLine, endStation)


stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6
