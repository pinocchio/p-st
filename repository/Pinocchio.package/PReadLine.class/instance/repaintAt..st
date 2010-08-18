private
repaintAt: position
	| col line |
	col := text column.
	line := text line.
	text position: position.
	self right: (text column - col - 1).
	self up: (line - text line).
	" this character got deleted or is a lf "
	text currentLine size = 0 ifTrue: [ output right. ^ self ]. 
	output overwrite: text currentCharacter