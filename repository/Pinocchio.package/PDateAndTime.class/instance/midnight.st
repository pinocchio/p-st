squeak protocol
midnight
	"Answer a DateAndTime starting at midnight local time"
	
	^self class basicNew
		setJdn: jdn
		seconds: 0
		offset: self class localOffset