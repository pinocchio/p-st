private
moveToLine: line column: col
	self right: (col - text column).
	self up: (text line - line).
	text column: col.
	text line: line