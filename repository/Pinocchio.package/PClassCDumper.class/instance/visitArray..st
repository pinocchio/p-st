visitor
visitArray: aPinocchioArray
	aPinocchioArray isEmpty ifTrue: [ ^ aPinocchioArray ].
	1 to: aPinocchioArray size do: [ :index| self visit: (aPinocchioArray at: index)].
	self put: aPinocchioArray with: [ :s| 
		s << 'new_Array_with('.
		self multiArgFor: aPinocchioArray on: s.
		s << $)].