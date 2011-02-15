inserting
text: aText
	"replace the current text and repaint the screen"
	|line min updatedLines pos |
	self startOfText.
	"this is not always needed"
	3 timesRepeat: [output left].
	output clearToEnd.
	client displayPrompt.
	updatedLines := aText lines + 1.
	pos := aText position.
	"overwrite existing lines"
	1 to: aText lines do: [ :index|
		"clear the current line"
		output clearToEnd.
		index = 1 ifFalse: [client continueLine].
		line := aText lineAt: index.
		line do: [ :char|
			output << char].
		output lf.].
	"delete the left-over lines"
	aText lines < text lines 
		ifTrue: [
			aText lines to: text lines do: [:index| 
				output deleteLine]].
	text := aText.
	"this is not always needed"
	2 timesRepeat: [output right].
	self up: (updatedLines - text line).
	self right: (text column).
	self repaint.