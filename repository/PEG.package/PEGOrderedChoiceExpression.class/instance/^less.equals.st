adding
<= child
	| new |
	new := child asPEG.
	new class = self class
		ifTrue: [ children addAll: new children ]
		ifFalse: [ children add: new ].