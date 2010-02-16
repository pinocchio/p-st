convenience
multiArgFor: aPinocchioArray
	^ aPinocchioArray 
		inject: aPinocchioArray size asString
		into: [ :values :element | 
			element uid size should > 2.
			values , ', (Object)' , element uid 
		]