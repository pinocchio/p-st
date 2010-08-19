*PEG
contains: substring at: position
	| size |
	size := substring size.
	position + size > self size ifTrue: [ ^ false ].
	1 to: size do: [ :i | (self at: position + i) = (substring at: i) ifFalse: [ ^ false ]].
	^ true