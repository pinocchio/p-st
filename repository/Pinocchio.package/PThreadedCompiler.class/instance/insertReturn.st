convenience
insertReturn
	| last |
	code removeLast. " remove final pop "
	last := code removeLast.
	(last isKindOf: PFunctionPointer) ifTrue: [
		last = #'push_true' 	 	ifTrue: [ ^ self append: #'method_return_true' ].
		last = #'push_false' 	ifTrue: [ ^ self append: #'method_return_false' ].
		last = #'push_nil' 		ifTrue: [ ^ self append: #'method_return_nil' ].
		last = #'push_0' 			ifTrue: [ ^ self append: #'method_return_0' ].
		last = #'push_1' 			ifTrue: [ ^ self append: #'method_return_1' ].
		last = #'push_2' 			ifTrue: [ ^ self append: #'method_return_2' ].
		last = #'push_self' 		ifTrue: [ ^ self append: #'method_return_self'].
	].
	code add: last.
	self append: #'method_return'.
	