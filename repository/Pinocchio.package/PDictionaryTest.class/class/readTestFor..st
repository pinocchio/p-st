as yet unclassified
readTestFor: aDictClass
	| results samplings |
	results := OrderedCollection new.
	samplings := {5. 10. 20. 30. 50. 100. 200. 500. 1000}.
	samplings do: [ :amount|
		results add: (self readTestFor: aDictClass 
							elements: amount 
							reads: amount * 10)
	].
	^ results.