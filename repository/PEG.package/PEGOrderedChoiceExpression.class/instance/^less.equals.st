adding
<= child
	| new convert |
	(children isKindOf: Array)
		ifTrue: [
			children := children asOrderedCollection.
			convert := true ].
	new := child asParser.
	new class = self class
		ifTrue: [ new children do: [ :c | children add: c asChildParser ] ]
		ifFalse: [ children add: new asChildParser ].
	convert isNil ifFalse: [ children := children asArray ]