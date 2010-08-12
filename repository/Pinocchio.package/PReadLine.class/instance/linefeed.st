actions
linefeed
	self newLine.
	(client isReady: buffer asString) ifTrue: [ ^ #done ].
	buffer end.
	buffer add: Character lf.