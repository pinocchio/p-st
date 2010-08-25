time zones
localTimeZone
	"Answer the local time zone"

	^ localTimeZone ifNil: [ localTimeZone := PTimeZone default ]