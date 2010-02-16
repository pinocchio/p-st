expression
initializeMessageExpression
	self expression.
	" expression will build this parser. "
	^ self messageExpression separator: (self separator).