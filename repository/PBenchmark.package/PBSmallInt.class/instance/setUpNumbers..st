as yet unclassified
setUpNumbers: size
	| offset value |
	offset := (size / 2) asInteger.
	1 to: size do: [ :i|
		value := offset - i.
		numbers at: i put: (value = 0 ifTrue: [ value + size] ifFalse: [value]) ]