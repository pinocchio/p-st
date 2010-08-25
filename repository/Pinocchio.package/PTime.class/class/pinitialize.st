initialize-release
pinitialize 
	<renameExport: #initialize >
	PPlugin require: #'Temporal.Time' at: 'plugin/temporal/Time.so'.
	
	secondsInDay := 86400.
	secondsInHour := 3600.
	secondsInMinute := 60.
	nanosInSecond := 1000000000. "10 raisedTo: 9."
	nanosInMillisecond := 1000000. "10 raisedTo: 6."