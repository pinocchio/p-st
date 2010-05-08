accessing
lookup: anASTVariable
	^ layout slotAt: anASTVariable name ifAbsent: [ parentScope lookup: anASTVariable ]