private
previousLine
	buffer previous.
	buffer atStart ifTrue: [ buffer next. ^ false ].
	^ true