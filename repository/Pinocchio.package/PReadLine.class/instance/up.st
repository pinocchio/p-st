navigating
up
	| col |
	col := text column.
	text up ifTrue: [
		text column: col.
		output up.
		(col - text column) timesRepeat: [ output left ]].