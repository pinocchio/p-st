matching
privateMatch: input
	| result |
	result := OrderedCollection new.
	children do: [:child | 
		skipWhitespace ifTrue: [input skipWhitespace].
		child omit
			ifTrue: [ (child omitMatch: input) ifNil: [ ^ nil ] ]
			ifFalse: [
				(child match: input)
					ifNil: [ ^ nil ]
					ifNotNil: [ :match | result add: match ]
			]
	].
	result size = 1 
		ifTrue: [^ result first].
	^ result