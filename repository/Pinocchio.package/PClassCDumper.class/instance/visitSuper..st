visitor
visitSuper: aPinocchioSuper
	| message |
	message := aPinocchioSuper message asPObject.
	self visit: message.
	self visitCollection: aPinocchioSuper arguments.
	self put: aPinocchioSuper
		with: [ :s| 
			s << 'new_Super(' << message uid << ', '.
			self multiArgFor: aPinocchioSuper arguments on: s.
			s << $) ].