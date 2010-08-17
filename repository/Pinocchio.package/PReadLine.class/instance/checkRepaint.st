private
checkRepaint
	parses := self parses.
	parses ifTrue: [ self repaint ].