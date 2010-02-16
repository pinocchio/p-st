separator
initializeCommentFormat
	| commentBorder |
	commentBorder := '"' asPEG.
	^ (commentBorder && ((commentBorder not) strongTimes)) <& commentBorder