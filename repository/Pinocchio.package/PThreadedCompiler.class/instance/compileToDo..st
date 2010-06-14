special
compileToDo: aSend
	| aBlock |
	aBlock := aSend at: 2.
	(aBlock params size == 1 and: [ aBlock locals isEmpty]) 
		ifFalse: [ ^ self compileSend: aSend ].
	aSend receiver accept: self.
	(aSend at: 1) accept: self.
	self append: #'send_to_do_' with: aSend.
	self compileBlock: aBlock.
	self code addLast: aBlock.