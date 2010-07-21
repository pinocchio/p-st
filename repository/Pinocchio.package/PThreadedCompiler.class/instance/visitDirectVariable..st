visiting
visitDirectVariable: aVariable
	|send|
	self warn: 'ThreadedCompiler: visit direct variable'.
	send := PSend receiver: (PConstant new: aVariable) 
					message: #readFrom: size: 1.
	send at: 1 put: PThisContext instance.
	self visitSend: send.