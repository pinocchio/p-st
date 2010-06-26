matching
match: input to: stream
	| position outputPosition |
	[ true ] whileTrue: [
		skipWhitespace ifTrue: [ input skipWhitespace ].
		position := input position.
		outputPosition := stream position.
		(child match: input to: stream) ifFalse: [
			input position: position.
			stream zapTo: outputPosition.
			^ true ] ].