navigating
up
	| position |
	position := self currentLine position.
	self previousLine ifTrue: [
		self currentLine position: position.
		output up.
		(position - self currentLine position) timesRepeat: [ output left ]].