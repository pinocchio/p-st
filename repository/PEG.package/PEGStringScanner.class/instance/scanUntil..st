matching
scanUntil: char
	position + 1 to: collection size do: [ :index |
		char = (collection basicAt: index) ifTrue: [ position := index - 1. ^ self ]
	].
	position := collection size