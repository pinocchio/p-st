matching
pushUntil: char
	position + 1 to: collection size do: [ :index |
		char = (collection at: index) asInteger
			ifTrue: [ stack push: collection from:  position to: index - 1. position := index - 1. ^ true ]].
	stack push: collection from:  position to: collection size.
	position := collection size.
	^ true