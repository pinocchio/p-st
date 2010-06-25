matching
match: input fail: block
	children do: [ :child | 
		skipWhitespace ifTrue: [ input skipWhitespace ].
		child match: input fail: [ block value. ^ nil ]  ]