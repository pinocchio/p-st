convenience
ensurePinocchioClass: aPinocchioClass
	aPinocchioClass ifNil: [ self shouldNotHappen ].
	pClass ifNotNil: [
		pClass == aPinocchioClass ifFalse: [ self error ].
		^pClass ].
	^ pClass := aPinocchioClass