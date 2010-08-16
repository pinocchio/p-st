as yet unclassified
initialize
	"ChronologyConstants initialize" 	
	squeakEpoch := 2415386. 		"Julian day number of 1 Jan 1901" 
	secondsInDay := 86400.
	secondsInHour := 3600.
	secondsInMinute := 60.
	nanosInSecond := 10 raisedTo: 9.
	nanosInMillisecond := 10 raisedTo: 6.
	dayNames := Array new: 7.
	dayNames at: 1 put: #Sunday. 
	dayNames at: 2 put: #Monday. 
	dayNames at: 3 put: #Tuesday. 
	dayNames at: 4 put: #Wednesday. 
	dayNames at: 5 put: #Thursday. 
	dayNames at: 6 put: #Friday. 
	dayNames at: 7 put: #Saturday.
		
	monthNames := Array new: 12.
	monthNames at: 1 put: #January.
	monthNames at: 2 put: #February.
	monthNames at: 3 put: #March.
	monthNames at: 4 put: #April.
	monthNames at: 5 put: #May.
	monthNames at: 6 put: #June.
	monthNames at: 7 put: #July.
	monthNames at: 8 put: #August.
	monthNames at: 9 put: #September.
	monthNames at: 10 put: #October.
	monthNames at: 11 put: #November.
	monthNames at: 12 put: #December.
	
	daysInMonth := Array new: 12.
	daysInMonth at: 1 put: 31.
	daysInMonth at: 2 put: 28.
	daysInMonth at: 3 put: 31.
	daysInMonth at: 4 put: 30.
	daysInMonth at: 5 put: 31.
	daysInMonth at: 6 put: 30.
	daysInMonth at: 7 put: 31.
	daysInMonth at: 8 put: 31.
	daysInMonth at: 9 put: 30.
	daysInMonth at: 10 put: 31.
	daysInMonth at: 11 put: 30.
	daysInMonth at: 12 put: 31.
