matching
fullmatch: input
	| result |
	"| match |
	match := expression match: input.
	^ match ifNil: [ match ]
		ifNotNil: [
			semantics ifNil: [ ^ match ].
			semantics value: match ]"
	result := self match: input.
	input should be atEnd.
	^ result