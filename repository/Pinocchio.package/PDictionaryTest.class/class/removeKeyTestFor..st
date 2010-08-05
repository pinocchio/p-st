as yet unclassified
removeKeyTestFor: aDictClass
	| results samplings |
	results := OrderedCollection new.
	samplings := {50. 10000}.
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