sourceCreation
expandSourceReturn: strippedLine
	| rawLine |
	strippedLine isEmpty ifTrue: [ ^ strippedLine].
	strippedLine first = $^ ifFalse: [ ^ strippedLine ].
	rawLine := strippedLine copyFrom: 2 to:  (strippedLine size - 1).
	^'RETURN_FROM_NATIVE(', rawLine withoutLeadingBlanks withoutTrailingBlanks, ');'