private
ticks
	"Answer an array {days. seconds}. Used by DateAndTime and Time."

	| days |
	days := self days.
	^ Array 
		with: days
		with: seconds - (days * PChronologyConstants secondsInDay)