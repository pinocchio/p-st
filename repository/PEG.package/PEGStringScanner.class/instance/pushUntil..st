matching
pushUntil: char
	| s |
	s := collection size.
	position + 1 to: s do: [ :index |
		char = (collection at: index)
			ifTrue: [ stack push: collection from:  position to: index - 1. position := index - 1. ^ true ]].
	stack push: collection from:  position to: s.
	position := s