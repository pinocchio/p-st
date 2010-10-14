natives
sendNext: message to: receiver class: cls
	| msg result |
	result := nextInterpreter
		ifNil: [ self send: message to: receiver class: cls ] 
		ifNotNil: [ :next |
		nextInterpreter := nil.
		msg := (PMessage new: 3)
							selector: #sendNext:to:class;
							at: 1 put: message;
							at: 2 put: receiver;
							at: 3 put: cls.
		self send: msg to: next ].
	self swapInvokeNative. 
	^ result.