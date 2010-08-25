accessing
serverDate
	"Returns the date string to be used in responses"

	| date |
	^String streamContents:[:s|
		s nextPutAll: 'Fri, 31 Dec 1999 23:59:59 GMT'.
		"TODO fix this"
		"date := DateAndTime now asUTC.
		s nextPutAll: date dayOfWeekAbbreviation, ', '.
		date asDate printOn: s format: (OrderedCollection new add: 1; add: 2; add: 3; add: $ ; add: 2; add: 1; add: 2) asArray. 		#(1 2 3 $  2 1 2 ).
		s space; nextPutAll: (Time seconds: date seconds) print24.
		s nextPutAll: ' GMT'."
	].