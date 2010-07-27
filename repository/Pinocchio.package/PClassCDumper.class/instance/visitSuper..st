visitor
visitSuper: aPinocchioSuper
	| message |
	message := aPinocchioSuper message asPObject.
	self visit: message.
	self visitCollection: aPinocchioSuper arguments.
	self put: aPinocchioSuper with: [ :s| 
			s << 'new_Super(' << (self idFor: message) << ', '.
			self multiArgFor: aPinocchioSuper arguments on: s.
			s << $) ].