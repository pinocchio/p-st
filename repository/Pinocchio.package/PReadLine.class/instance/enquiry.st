escapecodes
enquiry
	"move to the end of the line"
	| col |
	col := text column.
	text endOfLine.
	self right: (text column - col).