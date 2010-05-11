testing
whileTrue: aBlock
	<pPrimitive: #'whileTrue:' plugin: #'Runtime.BlockClosure'>
	^ self value
		ifTrue:
			[ aBlock value.
			self whileTrue: aBlock ]