reading
readLine
	| char |
	buffer clear.
	[ (char := input read) ~~ PCharacter lf ] whileTrue: [ mode handle: char ].
	self newline.
	^ self contents