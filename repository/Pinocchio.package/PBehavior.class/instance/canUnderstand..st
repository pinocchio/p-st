testing method dictionary
canUnderstand: selector
	(self includesSelector: selector) ifTrue: [^true].
	superclass == nil ifTrue: [^false].
	^superclass canUnderstand: selector