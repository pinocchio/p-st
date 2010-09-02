accessing
indexOf: aCharacter startingAt: start

	(aCharacter isCharacter) ifFalse: [^ 0].
	start to: self size do: [:pos |
		(self at: pos) asInteger = aCharacter asInteger ifTrue: [^ pos]].
	^ 0