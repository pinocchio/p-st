convenience
multiArgFor: aPinocchioArray on: aStream
	aStream << aPinocchioArray size asString.
	^ aPinocchioArray do: [ :element | 
			aStream << ', (Optr)' << (self idFor: element).]