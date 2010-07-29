matching
match: input
	|  stack |
	stack := PEGStack new.
	input stack: stack.
	(self parseOn: input) ifFalse: [ ^ nil ].
	input should be atEnd.
	stack isEmpty ifTrue: [ ^ true ].
	^ stack pop