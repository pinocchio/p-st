visitor
visitArray: aPinocchioArray
	aPinocchioArray isEmpty
		ifTrue: [ ^ aPinocchioArray ].
	self visitCollection: aPinocchioArray.
	self put: aPinocchioArray with: 'new_Array_with(' , (self multiArgFor: aPinocchioArray) , ')'