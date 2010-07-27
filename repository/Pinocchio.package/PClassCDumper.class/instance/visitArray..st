visitor
visitArray: aPinocchioArray
	aPinocchioArray isEmpty ifTrue: [ ^ aPinocchioArray ].
	self visitCollection: aPinocchioArray.
	self put: aPinocchioArray with: [ :s| 
		s << 'new_Array_with('.
		self multiArgFor: aPinocchioArray on: s.
		s << $)].