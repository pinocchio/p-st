convenience
ensurePinocchioClass: aPinocchioClass
	aPinocchioClass ifNil: [ self shouldNotHappen ].
	pClass
		ifNil: [ pClass := aPinocchioClass ]
		ifNotNil: [ pClass == aPinocchioClass ifFalse: [ self error ] ].
	^ pClass