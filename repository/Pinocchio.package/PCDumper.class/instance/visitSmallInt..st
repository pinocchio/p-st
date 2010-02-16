visitor
visitSmallInt: aPinocchioSmallInt 
	self put: aPinocchioSmallInt
		with: ('new_Type_SmallInt(' , aPinocchioSmallInt int asString , ')').