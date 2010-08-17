private
openLine
	| offset |
	offset := text distanceToBottom.
	offset timesRepeat: [ output down ].
	output lf.
	offset timesRepeat: [ output up ].
	output insertLine.
	client continueLine.
	text addLine