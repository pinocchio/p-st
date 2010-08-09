as yet unclassified
readTestFor: aDictClass
	| results samplings |
	results := OrderedCollection new.
	samplings := {50. 50000}.
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