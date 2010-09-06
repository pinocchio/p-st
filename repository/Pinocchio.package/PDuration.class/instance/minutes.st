ansi protocol
minutes
 	"Answer the number of minutes the receiver represents."

 	^ (seconds rem: PChronologyConstants secondsInHour) quo: PChronologyConstants secondsInMinute