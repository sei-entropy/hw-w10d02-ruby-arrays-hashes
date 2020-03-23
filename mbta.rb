# your solution here
SUBWAY = {
	Red: %w<South\ Station Park\ Street Kendall Central Harvard Porter Davis Alewife>,
	Green: %w<Government\ Center Park\ Street Boylston Arlington Copley Hynes Kenmore>,
	Orange: %w<North\ Station Haymarket Park\ Street State Downtown\ Crossing Chinatown Back\ Bay Forest Hills>,
	}

def stop_at_one_station(line, first_station, second_station)
	line = line.to_sym 
	(SUBWAY[line].index(first_station) - SUBWAY[line].index(second_station)).abs
end

def stops_between_stations(start_line, start_station, end_line, end_station)
  if start_line == end_line 
	p stop_at_one_station(start_line, start_station, end_station)
  else 
	p stop_at_one_station(start_line, start_station, "Park Street") + stop_at_one_station(end_line, "Park Street", end_station)
  end
end

stops_between_stations("Red", "Alewife", "Red", "Alewife") # 0
stops_between_stations("Red", "Alewife", "Red", "South Station") # 7
stops_between_stations("Red", "South Station", "Green", "Kenmore") # 6
