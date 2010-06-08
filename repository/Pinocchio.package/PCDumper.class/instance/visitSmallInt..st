visitor
visitSmallInt: aPinocchioSmallInt
	self put: aPinocchioSmallInt with: 'new_SmallInt(' , aPinocchioSmallInt int asString , ')'