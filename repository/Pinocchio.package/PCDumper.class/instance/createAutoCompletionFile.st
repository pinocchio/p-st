exporting
createAutoCompletionFile	
	| completion fullName |
	completion := self createStream: '/completion.txt'.
	classReferences do: [ :classReference|
		fullName := classReference fullName.
		completion << fullName; cr.
		classReference pclass pmetaclass methods do: [:method|
			completion << fullName; << ' '; << method selector; cr.
		]
	].
	completion close.