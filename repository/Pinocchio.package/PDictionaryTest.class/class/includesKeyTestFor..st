as yet unclassified
includesKeyTestFor: aDictClass
	| results samplings |
	results := OrderedCollection new.
	samplings := {5. 10. 20. 50. 100. 500. 1000}.
	samplings do:	[ :amount | 
		results add: (self 
						includesKeyTestFor: aDictClass
						elements: amount
						reads: amount * 5) ].
	^ results