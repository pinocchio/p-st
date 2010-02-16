comparing
beginsWith: subCollection 
	| pattern |
	subCollection do: [ :each |
		each = self next ifFalse: [ ^ false ]
	].
	^ true