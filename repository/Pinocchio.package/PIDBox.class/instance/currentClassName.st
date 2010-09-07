visiting
currentClassName
	(currentClass isKindOf: PMetaclass) ifTrue: [ 
			currentClass name, '_class'].
	^ currentClass name.