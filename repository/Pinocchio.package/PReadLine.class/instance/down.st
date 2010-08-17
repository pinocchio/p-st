navigating
down
	| col |
	col := text column.
	text down ifTrue: [
		text column: col.
		output down.
		(col - text column) timesRepeat: [ output left ] ]