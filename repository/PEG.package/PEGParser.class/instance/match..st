matching
match: input
	"| match |
	match := expression match: input.
	^ match ifNil: [ match ]
		ifNotNil: [
			semantics ifNil: [ ^ match ].
			semantics value: match ]"
	^ input memoizeMatch: self.