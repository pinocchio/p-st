as yet unclassified
includes: anObject
	self
		do:
			[ :each | 
			each == anObject
				ifTrue: [ ^ true ] ].
	^ false