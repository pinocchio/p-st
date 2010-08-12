accessing
accept: code
	| action |
	action := actions at: code ifAbsent: [
		self warn: self inspectName, ' does not accept: ', code.
		^ readline readMode ].
	(readline perform: action) ifTrue: [ self write: code ].
	readline readMode.