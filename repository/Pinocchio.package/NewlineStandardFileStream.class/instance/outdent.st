indenting
outdent
	indent := indent - 1.
	indent should be >= 0.
	self updateIndentionString.