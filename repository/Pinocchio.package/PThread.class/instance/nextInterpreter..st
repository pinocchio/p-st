accessing
nextInterpreter: anInterpreter
	(anInterpreter isNil or: [ nextInterpreter isNil ])
		ifFalse: [ self shouldNotHappen ].
	nextInterpreter := anInterpreter