matching
match: input to: stream
	children do: [ :child | 
		skipWhitespace ifTrue: [ input skipWhitespace ].
		child omit
			ifTrue: [ (child omitMatch: input) ifFalse: [ ^ false ] ]
			ifFalse: [ (child match: input to: stream) ifFalse: [ ^ false ] ] ].
	^ true