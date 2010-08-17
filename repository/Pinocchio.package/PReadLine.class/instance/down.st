navigating
down
	| position |
	position := self currentLine position.
	self nextLine ifTrue: [
		self currentLine position: position.
		output down.
		(position - self currentLine position) timesRepeat: [ output left ] ]