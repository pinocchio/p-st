visitor
visitInternalClass: aPinocchioInternalClass
	aPinocchioInternalClass declareClass ifTrue: [self addGlobal: aPinocchioInternalClass].
	"Ignore here"

	