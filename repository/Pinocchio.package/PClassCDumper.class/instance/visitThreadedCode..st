visitor
visitThreadedCode: aPinocchioArray
	aPinocchioArray isEmpty ifTrue: [ ^ aPinocchioArray ].
	1 to: aPinocchioArray size do: [ :index | self visit: (aPinocchioArray at: index)].
	self put: aPinocchioArray with: [ :s| 
		s << 'instantiate_Array_with(ThreadedCode_Class, 0, '.
		self multiArgFor: aPinocchioArray on: s.
		s << $)].