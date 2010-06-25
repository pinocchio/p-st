matching
match: input
	|  stack |
	stack := PEGStack new.
	self match: input to: stack fail: [ ^ nil ].
	stack isEmpty ifTrue: [ ^ true ].
	^ stack pop