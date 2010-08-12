as yet unclassified
handle: character
	($0 <= character and: [ character <= $9 ])
		ifTrue: [ ^ memo := memo * 10 + (character asInteger - $0 asInteger)].
	character = $~
		ifTrue: [ self accept: memo ]
		ifFalse: [ self accept: character ].
	memo := 0