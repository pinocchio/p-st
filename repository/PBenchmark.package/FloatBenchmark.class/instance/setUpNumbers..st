as yet unclassified
setUpNumbers: size
	| offset value |
	offset := (size / 2) asFloat.
	1 to: size do: [:index|
		value := 100/offset - offset.
		numbers at: index put: (value = 0 ifTrue: [1/2] ifFalse:[ value])].