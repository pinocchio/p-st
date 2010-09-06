special
compileSendToByDo: aSend
		
	aSend receiver accept: self.
	self visitCollection: aSend.
	
	self append: #'send_to_by_do_'.
	self append: #'continue_to_do_'.
	
	self code add: aSend.