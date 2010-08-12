reading
readLine
	| char |
	buffer clear.
	[ (mode handle: input read) ~~ #done ] whileTrue.
	^ self contents