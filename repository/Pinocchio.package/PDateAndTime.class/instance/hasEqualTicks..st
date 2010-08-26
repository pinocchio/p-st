private
hasEqualTicks: aDateAndTime
	
	^ (jdn = aDateAndTime julianDayNumber)
		and: [ seconds = aDateAndTime secondsSinceMidnight ]

