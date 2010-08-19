matching
pushAllIn: subCollection
	position + 1 to: collection size do: [ :index |
		(subCollection indexOf: (collection at: index)) = 0 ifTrue: [
			stack push: collection from: position to: index - 1.
			position := index - 1.
			^ true ]].
	stack push: collection from:  position to: collection size.
	position := collection size