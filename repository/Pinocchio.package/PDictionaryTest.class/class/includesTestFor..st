as yet unclassified
includesTestFor: aDictClass
	| results samplings |
	results := OrderedCollection new.
	samplings := {5. 10. 20. 50. 100. 500.}.
	samplings do: [ :amount|
		results add: (self includesTestFor: aDictClass 
							elements: amount
							reads: amount * 5)
	].
	^ results.