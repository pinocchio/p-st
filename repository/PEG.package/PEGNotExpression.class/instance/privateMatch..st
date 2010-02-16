matching
privateMatch: input
	| match |
	match := child match: input.
	match ifNil: [
		self consume ifFalse: [ ^ true ]. " If we don't consume, just succeed and continue. '"
		^ input next ifNotNil: [ :char | char asString ]. " If we consume, we fail if next is end of string (nil) "
		].
	^ nil.