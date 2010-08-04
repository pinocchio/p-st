visitor
visitInternalClass: aPinocchioInternalClass
	aPinocchioInternalClass declareClass ifTrue: [globals add: aPinocchioInternalClass].
	"Ignore here"

	