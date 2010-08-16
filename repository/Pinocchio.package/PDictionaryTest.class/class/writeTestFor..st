as yet unclassified
writeTestFor: aDictClass
	| results samplings |
	results := OrderedCollection new.
	samplings := {50. 100000}.
	samplings do: [ :amount | results add: (self writeTestFor: aDictClass elements: amount) ].
	^ results