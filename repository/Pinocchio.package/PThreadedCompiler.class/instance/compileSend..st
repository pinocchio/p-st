special
compileSend: aSend
	aSend receiver accept: self.
	self visitCollection: aSend.
	aSend size < 6 ifTrue: [
		self append: (#send, aSend size asString) asSymbol with: aSend.
	] ifFalse: [
		self append: #sendn with: aSend.
	]
	