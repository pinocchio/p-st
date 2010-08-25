ansi protocol
minutes
 	"Answer the number of minutes the receiver represents."

 	^ (seconds rem: ChronologyConstants secondsInHour) quo: PChronologyConstants secondsInMinute