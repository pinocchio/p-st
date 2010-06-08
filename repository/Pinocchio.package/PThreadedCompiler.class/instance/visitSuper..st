visiting
visitSuper: aSuper
	self append: #'push_next' with: aSuper.
	self visitCollection: aSuper.
	aSuper size <= 5 ifTrue: [
		self append: (#super, aSuper size asString) asSymbol.
	] ifFalse: [
		self append: #supern with: aSuper size.
	]
	