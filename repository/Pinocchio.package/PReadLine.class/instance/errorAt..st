private
errorAt: position
	| col line |
	col := text column.
	line := text line.
	output errorColor.
	text position: position.
	self right: (text column - col - 1).
	self up: (line - text line).
	output overwrite: text currentCharacter.
	self right: (col - text column).
	self up: (text line - line).
	text column: col.
	text line: line.
	output normal.