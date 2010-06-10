special
compileSend: aSend
	self append: #'push1' with: aSend.
	aSend receiver accept: self.
	self visitCollection: aSend.
	aSend size <= 5 ifTrue: [
		self append: (#send, aSend size asString) asSymbol.
	] ifFalse: [
		self append: #sendn with: aSend size.
	]
	