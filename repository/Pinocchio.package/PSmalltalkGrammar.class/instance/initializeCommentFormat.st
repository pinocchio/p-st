separator
initializeCommentFormat
	| commentBorder |
	commentBorder := '"' asParser.
	^ commentBorder
		&& commentBorder not consume strongTimes
		<& commentBorder