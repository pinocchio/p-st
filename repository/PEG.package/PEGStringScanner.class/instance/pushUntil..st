matching
pushUntil: char
	position + 1 to: collection size do: [ :index |
		char = (collection basicAt: index)
			ifTrue: [ stack push: collection from:  position to: index - 1. position := index - 1. ^ self ]].
	stack push: collection from:  position to: collection size.
	position := collection size