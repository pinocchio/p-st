visiting
visitSuper: aSuper
	self append: #'push_self'.
	self visitCollection: aSuper.
	aSuper size < 6 ifTrue: [
		self append: (#super, aSuper size asString) asSymbol with: aSuper.
	] ifFalse: [
		self append: #supern with: aSuper.
	]
	