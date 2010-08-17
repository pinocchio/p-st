accessing
readLine
	self clear.
	[ ready ] whileFalse: [ vterm read ].
	^ text contents