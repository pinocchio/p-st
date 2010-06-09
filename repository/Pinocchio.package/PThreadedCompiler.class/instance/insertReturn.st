convenience
insertReturn
	| last |
	last := code removeLast.
	last = #'push_true' ifTrue: [ ^ self append: #'return_true' ].
	last = #'push_false' ifTrue: [ ^ self append: #'return_false' ].
	last = #'push_nil' ifTrue: [ ^ self append: #'return_nil' ].
	last = #'push_0' ifTrue: [ ^ self append: #'return_0' ].
	last = #'push_1' ifTrue: [ ^ self append: #'return_1' ].
	last = #'push_2' ifTrue: [ ^ self append: #'return_2' ].
	last = #'push_self' ifTrue: [ ^ self append: #'return_self'].
	code add: last.
	self append: #return.
	