ansi protocol
hours
 	"Answer the number of hours the receiver represents."
 
 	^ (seconds rem: PChronologyConstants secondsInDay) quo: PChronologyConstants secondsInHour
