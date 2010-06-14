special
compileValue: aSend
	aSend receiver accept: self.
	self append: #'send_value' with: aSend.