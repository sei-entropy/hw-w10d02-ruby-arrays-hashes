def stops_between_stations (startLine, startStation, endLine, endStation)
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
        ],
    }
    if startLine == endLine
        stops = ( lines[startLine.to_sym].index(startStation) - lines[endLine.to_sym].index(endStation) ).abs
        p stops , "stops ";


    else startLine != endLine 
        stops = ( lines[startLine.to_sym].index(startStation) - lines[startLine.to_sym].index("Park Street") ).abs 
        stops += ( lines[endLine.to_sym].index(endStation) - lines[endLine.to_sym].index("Park Street") ).abs 
        p stops , "stops ";
    end
end
