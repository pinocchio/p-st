actions
linefeed
	output newline.
	(client isReady: buffer asString) ifTrue: [ ^ ready := true ].
	buffer end.
	buffer add: Character lf.