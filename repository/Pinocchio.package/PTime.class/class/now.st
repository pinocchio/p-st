ansi protocol
now
	"Answer a Time representing the time right now - this is a 24 hour clock."

	^ self fromSeconds: self totalSeconds \\ 86400.
