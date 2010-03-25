as yet unclassified
removeKeyTestFor: aDictClass
	| results samplings |
	results := OrderedCollection new.
	samplings := {5.
	10.
	20.
	30.
	50.
	100.
	200.
	500.
	1000}.
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