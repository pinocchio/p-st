arithmetic
quo: aSmallInt
	"Integer quotient defined by division with truncation toward zero. -9 quo: 
	4 = -2, -0.9 quo: 0.4 = -2. rem: answers the remainder from this division."

	(self negative == aSmallInt negative) 
		ifTrue: [^self // aSmallInt]
		ifFalse: [ ^(self negated // aSmallInt) negated ].