special
compileSend: aSend
	aSend receiver accept: self.
	self visitCollection: aSend.
	aSend size <= 1 ifTrue: [
		self append: (#send, aSend size asString) asSymbol with: aSend.
	] ifFalse: [
		self append: #sendn with: aSend.
	]
	