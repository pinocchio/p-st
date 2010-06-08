visiting
visitSend: aSend
	self append: #pushNext.
	self append: aSend.
	aSend receiver accept: self.
	self visitCollection: aSend.
	aSend size <= 5 ifTrue: [
		self append: (#send, aSend size asString) asSymbol.
	] ifFalse: [
		self append: #sendn.
		self append: aSend size.
	]
	