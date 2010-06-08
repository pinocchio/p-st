visiting
visitAssign: anAssign
	self append: #'push_next' with: anAssign.
	anAssign expression accept: self.
	self append: #assign