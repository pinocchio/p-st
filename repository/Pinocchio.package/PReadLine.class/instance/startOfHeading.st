escapecodes
startOfHeading
	| col |
	col := text column.
	text startOfLine.
	self right: (text column - col).