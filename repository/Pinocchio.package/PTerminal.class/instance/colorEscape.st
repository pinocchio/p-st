coloring
colorEscape
	self outStream 
		write: Character escape;
		<< '['.
	underline ifTrue: [ self outStream << '4;' ]. 
	bold ifTrue: [ self outStream << '1;' ].
	blink ifTrue: [ self outStream << '5;' ].
	self outStream << currentColor asString.
	(currentBackground == 0) ifFalse: [
		self outStream << ';';
				 << currentBackground asString.
	].
	self outStream << 'm'.