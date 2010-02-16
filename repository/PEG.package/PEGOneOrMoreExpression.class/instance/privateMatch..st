matching
privateMatch: input
	| result match |
	result := OrderedCollection new.
	match := child match: input.
	match ifNil: [ ^ match ].
	result add: match.
	^ self privateMatch: input on: result