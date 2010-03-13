as yet unclassified
readTestFor: aDictClass
	| results |
	results := OrderedCollection new.
	100 to: 1000 by: 100 do: [ :amount|
		results add: (self readTestFor: aDictClass 
							elements: amount 
							reads: amount * 10)
	].
	^ results.