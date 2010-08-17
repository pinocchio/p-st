escaping
colorEscape
	self csiEscape.
	blink ifTrue: [ outStream << '5;' ].
	outStream << currentColor asString.
	(currentBackground == 0) ifFalse: [
		outStream << $; << currentBackground asString ].
	outStream << $m.