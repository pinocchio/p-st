visitor
visitSend: aPSend
	| message |
	message := aPSend message asPObject.
	self visit: aPSend receiver.
	self visit: message.
	self visitCollection: aPSend arguments.
	self comment: aPSend message.
	self put: aPSend with: [ :s| 
			s << 'new_Send((Optr)' << (self idFor: aPSend receiver) << ', ' << (self idFor: message) << ', '.
			self multiArgFor: aPSend arguments on: s.
			s << $)].
	self installPInfoOn: aPSend