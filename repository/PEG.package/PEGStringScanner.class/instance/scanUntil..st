matching
scanUntil: char
	position + 1 to: collection size do: [ :index |
		char = (collection at: index) asInteger ifTrue: [ position := index - 1. ^ true ]
	].
	position := collection size.
	^ true