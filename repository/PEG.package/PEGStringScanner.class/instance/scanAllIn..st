matching
scanAllIn: subCollection
	position + 1 to: collection size do: [ :index |
		(subCollection indexOf: (collection at: index)) = 0 ifTrue: [ position := index - 1. ^ true ]
	].
	position := collection size.
	^ true