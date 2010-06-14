special
compileToDo: aSend
	| aBlock |
	aBlock := aSend at: 2.
	(aBlock params size == 1 and: [ aBlock locals isEmpty]) 
		ifFalse: [ ^ self compileSend: aSend ].
	aSend receiver accept: self.
	(aSend at: 1) accept: self.
	
	self compileBlock: aBlock.
	self append: #'send_to_do_'.
	self append: #'continue_to_do_' with: aBlock.
	self append: #'zap'.
	self append: #'jump_back3'.
	
	self code add: aSend.