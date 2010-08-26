instance creation queries
now
	^ self basicNew 
		ticks: (Array with: PChronologyConstants squeakEpoch with: PTime totalSeconds)
		offset: self localTimeZone offset
