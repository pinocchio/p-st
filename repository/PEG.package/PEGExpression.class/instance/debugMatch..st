matching
debugMatch: input
	<preventExport>
	| position match |
	self debug: input.
	position := input position.
	match := self privateMatch: input.
	match ifNil: [input position: position].
	self debugEnd: input result: match.
	^ match