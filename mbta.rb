
# your solution here
def stops_between_stations(start_line,start_station,end_line,end_station)
 red_line=["South Station","Park Street","Kendall","Central","Harvard","Porter","Davis","Alewife"]
 green_line=["Government Center","Park Street","Boylston","Arlington","Copley","Hynes","Kenmore"]
 orenge_line=["North Station","Haymarket","Park Street","State","Downtown Crossing","Chinatown","Back Bay","Back Bay"] 
 #In this case we want to know which line you will start from to accese the array
    case start_line
    when "Red" then start_line=red_line
    when "Green" then  start_line=green_line
    else
        start_line=orenge_line
    end
#In this case we want to know which line you will go to and accese the array
    case end_line
    when "Red" then end_line=red_line
    when "Green" then  end_line=green_line
    else
        end_line=orenge_line
    end

 if start_line==end_line
    if start_station==end_station
       return 0
    end
    #Else but stell in same Line  
    #Prent the numberof satation by sub stations index
    return start_line.index(start_station) - start_line.index(end_station)
  
 end
 #Else so satation not in same line as we know Park Street is intersection point
 

end

p stops_between_stations('Red', 'Alewife', 'Red', 'Alewife')
p stops_between_stations("Red", 'Alewife', "Red", 'South Station')

# stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
# stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
# stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6