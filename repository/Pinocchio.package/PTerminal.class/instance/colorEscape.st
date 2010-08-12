escaping
colorEscape
	self csiEscape.
	underline ifTrue: [ outStream << '4;' ]. 
	bold ifTrue: [ outStream << '1;' ].
	blink ifTrue: [ outStream << '5;' ].
	outStream << currentColor asString.
	(currentBackground == 0) ifFalse: [
		outStream << $; << currentBackground asString ].
	outStream << $m.