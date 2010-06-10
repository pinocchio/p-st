visiting
visitSend: aSend
	| aBlock |
	aSend message = #ifTrue:: ifTrue: [
		aSend receiver accept: self.
		self append: #'send_ifTrue_'.
		self code addLast: aSend.
		aBlock := aSend at: 1.
		self compileBlock: aBlock.
		self code addLast: aBlock.
		^ self.
	].
	self append: #'push1' with: aSend.
	aSend receiver accept: self.
	self visitCollection: aSend.
	aSend size <= 5 ifTrue: [
		self append: (#send, aSend size asString) asSymbol.
	] ifFalse: [
		self append: #sendn with: aSend size.
	]
	