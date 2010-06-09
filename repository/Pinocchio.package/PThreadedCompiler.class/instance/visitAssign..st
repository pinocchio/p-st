visiting
visitAssign: anAssign
	self append: #'push1' with: anAssign.
	anAssign expression accept: self.
	self append: #assign