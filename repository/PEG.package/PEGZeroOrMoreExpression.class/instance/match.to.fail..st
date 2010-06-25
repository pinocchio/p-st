matching
match: input to: stream fail: block
	| position outputPosition |
	[ true ] whileTrue: [
		skipWhitespace ifTrue: [ input skipWhitespace ].
		position := input position.
		outputPosition := stream position.
		child match: input to: stream fail: [
			input position: position.
			stream zapTo: outputPosition.
			^ nil ] ].