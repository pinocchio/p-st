joinsplit
split: aCollection
	| result current |
	result := OrderedCollection new.
	current := OrderedCollection new.
	aCollection do: [ :c |
		c = self
			ifTrue: [ result add: (String newFrom: current) ]
			ifFalse: [ current addLast: c ] ].
	^ result