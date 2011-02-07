inserting
text: aText
	|line min updatedLines pos |
	self startOfText.
	updatedLines := aText lines + 1.
	pos := aText position.
	"overwrite existing lines"
	1 to: aText lines do: [ :index|
		"clear the current line"
		output clearToEnd.
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
	self up: (updatedLines - text line).
	self right: (text column).