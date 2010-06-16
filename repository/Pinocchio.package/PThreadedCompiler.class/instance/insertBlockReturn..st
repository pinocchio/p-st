convenience
insertBlockReturn: aBlock
	| last |
	code size = 0 ifTrue: [ self append: #'push_nil'; append: #pop. ].	
	aBlock isScoped ifTrue: [ ^ self insertReturn. ].
	code removeLast. " remove final pop "
	last := code removeLast.
	(last isKindOf: PFunctionPointer) ifTrue: [
		last = #'push_true' 	 	ifTrue: [ ^ self append: #'block_return_true' ].
		last = #'push_false' 	ifTrue: [ ^ self append: #'block_return_false' ].
		last = #'push_nil' 		ifTrue: [ ^ self append: #'block_return_nil' ].
		last = #'push_0' 			ifTrue: [ ^ self append: #'block_return_0' ].
		last = #'push_1' 			ifTrue: [ ^ self append: #'block_return_1' ].
		last = #'push_2' 			ifTrue: [ ^ self append: #'block_return_2' ].
		last = #'push_self' 		ifTrue: [ ^ self append: #'block_return_self'].
	].
	code add: last.
	self append: #'block_return'.
	