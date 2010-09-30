adding
<& child
	| new |
	new := child asParser.
	new class = self class
		ifTrue: [ new children do: [ :c | children add: c asChildParser ] ]
		ifFalse: [ children add: new asChildParser ].