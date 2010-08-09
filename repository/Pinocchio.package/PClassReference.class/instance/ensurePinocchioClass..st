convenience
ensurePinocchioClass: aPinocchioClass
	aPinocchioClass should not be isNil.
	pClass
		ifNil: [ pClass := aPinocchioClass ]
		ifNotNil:
			[ pClass = aPinocchioClass
				ifFalse: [ self error ] ].
	^ pClass