special
compileSendHash: aSend
	aSend receiver accept: self.
	self append: #'send_hash' with: aSend.