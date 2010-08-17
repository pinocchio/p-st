as yet unclassified
getstr: aString
	^ cache at: aString ifAbsentPut: [ self tgetstr: aString ]