
# your solution here
# method take 4 argument 
def stops_between_stations(stLine, stStation, endLine, endStation) 
    # decler varibal stops
    stops = 0;
    # put all the arrys in lines red and green and orange 
   lines= {
    "Red"=>[
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
        "Orange"=> [
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
    # write the condation for equal or not 
    if stLine === endLine
        stops = (lines[stLine].find_index(stStation) - lines[endLine].find_index(endStation)).abs()
        puts stops
    end 
    if stLine != endLine
        stops = (lines[stLine].find_index(stStation) - lines[endLine].find_index("Park Street")).abs()
        stops += (lines[endLine].find_index(endStation) - lines[endLine].find_index("Park Street")).abs()
        puts stops
    end 
end
#Call the method
stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6
#The result 
# 0
# 7
# 6
