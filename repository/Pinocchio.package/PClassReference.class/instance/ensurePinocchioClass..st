convenience
ensurePinocchioClass: aPinocchioClass 
	self assert: aPinocchioClass isNil not.
	pClass 
		ifNil: [ pClass := aPinocchioClass ]
		ifNotNil: [ pClass = aPinocchioClass ifFalse: [ self error ] ].
	^ pClass