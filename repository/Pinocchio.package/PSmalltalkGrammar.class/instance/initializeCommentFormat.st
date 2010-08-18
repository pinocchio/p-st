separator
initializeCommentFormat
	| commentBorder |
	commentBorder := '"' asPEG.
	^ commentBorder
		&& commentBorder not consume strongTimes
		<& commentBorder