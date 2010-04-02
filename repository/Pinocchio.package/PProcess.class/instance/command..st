accessing
command: aCommandString
	self isOpened ifTrue: [ self error: 'Can''t change the command of a running process'].
	command := aCommandString.