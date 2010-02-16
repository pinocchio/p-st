expecting-error
signal: errorClass withMessageText: message

	value on: Exception do: [ :ex | 
		ex should beKindOf: errorClass.
		^message isBlock 
			ifTrue: [ message value: ex messageText ]
			ifFalse: [ ^ex messageText should = message ]].
	TestFailure signal: ('Should raise <1p> but was none' expandMacrosWith: errorClass).