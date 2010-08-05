visiting
idForLayout: anArray
	currentClass ifNotNil: [
		^ 'layout_', self currentClassName].
	^ self rawDefaultIdFor: anArray.