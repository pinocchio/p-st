private
repaint
	| col line |
	output normal.
	col := text column.
	line := text line.
	" the newly inserted character isn't painted yet "
	col - 1 timesRepeat: [ output left ].
	" there is always 1 line "
	line - 1 timesRepeat: [ output up ].
	
	text do: [ :l |
		l do: [ :char | output overwrite: char ].
		l size timesRepeat: [ output left ]] separatedBy: [ output down ].
	
	(text lines - line) timesRepeat: [ output up ].
	col timesRepeat: [ output right ]