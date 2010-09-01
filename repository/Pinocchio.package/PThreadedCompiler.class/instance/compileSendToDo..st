special
compileSendToDo: aSend
		
	aSend receiver accept: self.
	self visitCollection: aSend.
	
	self append: #'send_to_do_'.
	self append: #'continue_to_do_'.
	self append: #'zap1'.
	self append: #'jump_back2'.
	
	self code add: aSend.