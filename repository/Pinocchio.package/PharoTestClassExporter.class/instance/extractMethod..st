exporting
extractMethod: methodSelector
	methodSelector isSymbol ifTrue: [  
		^ self sclass methodDict at: methodSelector
	].
	self error: 'Unknown type ', methodSelector class name asString.