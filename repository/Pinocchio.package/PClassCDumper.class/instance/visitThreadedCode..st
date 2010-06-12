visitor
visitThreadedCode: aPinocchioArray
	" TODO generate proper code "
	| array |
	array := PArray newFrom: aPinocchioArray.
	self visitArray: array.
	aPinocchioArray uid: array uid