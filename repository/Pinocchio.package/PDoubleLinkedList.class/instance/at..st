accessing
at: index
	| i element |
	index > size ifTrue: [ self error: 'index out of bounds' ].
	i := 1.
	element := self first next.
	[i < index] whileTrue: [
		element := element next. 
		i := i + 1].
	^ element value