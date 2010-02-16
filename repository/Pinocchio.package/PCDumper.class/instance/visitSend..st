visitor
visitSend: aPSend 
	self visit: aPSend receiver.
	self visit: aPSend message.
	self visitCollection: aPSend arguments.
	self comment: aPSend message asSymbol asString.
	self put: aPSend 
		with: ('new_AST_Send((Object)',aPSend receiver uid,', ',
							    '(Object)', aPSend message uid,', ',
								(self multiArgFor: aPSend arguments) ,')').
	self installPInfoOn: aPSend.