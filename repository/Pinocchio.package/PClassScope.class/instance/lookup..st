accessing
lookup: anASTVariable
	layout ifNil: [ ^ parentScope lookup: anASTVariable ].
	^ layout slotAt: anASTVariable name ifAbsent: [ parentScope lookup: anASTVariable ]