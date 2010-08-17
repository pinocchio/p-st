accessing
readLine
	self clear.
	[ ready ] whileFalse: [ vterm read ].
	^ self contents