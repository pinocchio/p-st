as yet unclassified
readTestFor: aDictClass
	| results samplings |
	results := OrderedCollection new.
	samplings := {50.
	100.
	200.
	300.
	500.
	1000.
	2000.
	5000.
	10000}.
	samplings
		do:
			[ :amount | 
			results
				add:
					(self
						readTestFor: aDictClass
						elements: amount
						reads: amount * 10) ].
	^ results