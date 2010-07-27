exporting
createAutoCompletionFile	
	| completion fullName methodDict |
	completion := self createStream: '/completion.txt'.
	methodDict := PDictionary new.
	classReferences do: [ :classReference|
		fullName := classReference fullName.
		completion << fullName; cr.
		methodDict addAll: classReference pclass methods.
		methodDict addAll: classReference pclass pmetaclass methods.].	
	methodDict do: [ :method|
		completion << method selector; cr.].
	completion close.