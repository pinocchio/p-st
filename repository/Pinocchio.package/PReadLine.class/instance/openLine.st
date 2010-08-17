private
openLine
	| offset |
	offset := self distanceToBottom.
	offset timesRepeat: [ output down ].
	output lf.
	offset timesRepeat: [ output up ].
	output insertLine.
	client continueLine.
	^ self addLine