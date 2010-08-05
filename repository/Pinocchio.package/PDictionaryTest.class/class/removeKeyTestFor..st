as yet unclassified
removeKeyTestFor: aDictClass
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
						removeKeyTestFor: aDictClass
						elements: amount
						removes: amount * 10) ].
	^ results