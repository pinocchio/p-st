matching
match: input to: stream fail: block
	children do: [ :child | 
		skipWhitespace ifTrue: [ input skipWhitespace ].
		child omit
			ifTrue: [ child match: input fail: [ block value. ^ nil ] ]
			ifFalse: [ child match: input to: stream fail: [ block value. ^ nil ] ] ]