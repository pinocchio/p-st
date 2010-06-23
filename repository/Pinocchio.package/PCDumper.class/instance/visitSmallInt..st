visitor
visitSmallInt: aPinocchioSmallInt
	self put: aPinocchioSmallInt with: [ :s| 
		s << 'new_SmallInt(' << aPinocchioSmallInt int asString << $)].