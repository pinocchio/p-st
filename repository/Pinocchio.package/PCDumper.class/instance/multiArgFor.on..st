convenience
multiArgFor: aPinocchioArray on: aStream
	aStream << aPinocchioArray size asString.
	^ aPinocchioArray do: [ :element | 
			element uid size should > 2.
			aStream << ', (Optr)' << element uid.
		]