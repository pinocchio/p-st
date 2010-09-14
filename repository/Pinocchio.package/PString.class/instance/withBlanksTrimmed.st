converting
withBlanksTrimmed
	"Return a copy of the receiver from which leading and trailing blanks have been trimmed."

	| first result |
	first := self findFirst: [:c | c isSeparator not].
	first = 0 ifTrue: [^ ''].  "no non-separator character"
	^self
		copyFrom: first
		to: (self findLast: [:c | c isSeparator not]).

