visiting
visitDirectVariable: aVariable
	|send|
	send := PSend receiver: (PConstant new: aVariable) 
					message: #readFrom: size: 1.
	send at: 1 put: PThisContext instance.
	self visitSend: send.