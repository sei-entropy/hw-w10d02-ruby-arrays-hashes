
# your solution here


def stops_between_stations(sLine,stationNS,eLine,stationNE)
 
mbta = {
    Red: ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
    Green: ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"],
    Orange: ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]
} 

     stop = 0;

   startingPoint =mbta[sLine.to_sym].index(stationNS) 
   parkStarting = mbta[sLine.to_sym].index('Park Street')
   endingPoint = mbta[eLine.to_sym].index(stationNE)
   parkending = mbta[eLine.to_sym].index('Park Street')



    if (sLine == eLine) 
        if (stationNS == stationNE) 
            stop = 0
         elsif (stationNS != stationNE) 
            result = (startingPoint.to_i - endingPoint.to_i).abs
            stop = stop.to_i + result.to_i
        end
     elsif (sLine != eLine) 
        if (stationNS == stationNE) 
            stop = 0
        elsif (stationNS != stationNE) 
             finalStart =(startingPoint.to_i - parkStarting.to_i).abs
             finalEnd =(endingPoint.to_i - parkending.to_i).abs
            stop = finalStart.to_i + finalEnd.to_i
        end
     end
p stop

end


 stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
 stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
 stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6