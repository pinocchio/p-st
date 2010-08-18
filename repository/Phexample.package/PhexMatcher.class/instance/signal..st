expecting-error
signal: errorClass 
	
	value on: Object do: [ :ex |
		^ex should beKindOf: errorClass ].
	TestFailure signal: ('Should raise <1p> but was none' expandMacrosWith: errorClass).