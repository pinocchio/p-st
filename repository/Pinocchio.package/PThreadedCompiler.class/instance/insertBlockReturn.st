convenience
insertBlockReturn
	code size = 0 ifTrue: [ ^ self append: #'return_nil' ].
	self insertReturn
	