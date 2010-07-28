visiting
currentClassName
	(currentClass isKindOf: PMetaclass) ifTrue: [ 
			currentClass name asString, '_class'].
	^ currentClass name asString.