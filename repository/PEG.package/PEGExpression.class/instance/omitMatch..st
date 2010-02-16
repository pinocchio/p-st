matching
omitMatch: input
	| position match |
	"self debug: input."
	position := input position.
	match := self privateOmitMatch: input.
	match ifNil: [input position: position].
	"self debugEnd: input."
	^ match