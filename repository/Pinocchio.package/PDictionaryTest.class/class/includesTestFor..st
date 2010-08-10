as yet unclassified
includesTestFor: aDictClass
	| results samplings |
	results := OrderedCollection new.
	samplings := {5. 500}.
	samplings
		do:
			[ :amount | 
			results
				add:
					(self
						includesTestFor: aDictClass
						elements: amount
						reads: amount * 5) ].
	^ results