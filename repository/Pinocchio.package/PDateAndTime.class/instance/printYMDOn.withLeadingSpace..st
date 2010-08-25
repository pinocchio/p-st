squeak protocol
printYMDOn: aStream withLeadingSpace: printLeadingSpaceToo
	"Print just the year, month, and day on aStream.

	If printLeadingSpaceToo is true, then print as:
		' YYYY-MM-DD' (if the year is positive) or '-YYYY-MM-DD' (if the year is negative)
	otherwise print as:
		'YYYY-MM-DD' or '-YYYY-MM-DD' "

	| year month day |
	self dayMonthYearDo: [ :d :m :y | year := y. month := m. day := d ].
	year negative
		ifTrue: [ aStream nextPut: $- ]
		ifFalse: [ printLeadingSpaceToo ifTrue: [ aStream space ]].
		year < 1000 ifTrue:  [ aStream << $0. ].
		year < 100 ifTrue:  [ aStream << $0. ].
		year < 10 ifTrue:  [ aStream << $0. ].
		year printOn: aStream. aStream << $-.
		month < 10 ifTrue: [ aStream << $0. ].
		month printOn: aStream. aStream << $-.
		day < 10 ifTrue: [ aStream << $0. ].
		day printOn: aStream.
