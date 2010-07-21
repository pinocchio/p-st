visiting
visitAssign: anAssign
	"TODO specify for each slot/variable type"
	self append: #'push1' with: anAssign.
	anAssign expression accept: self.
	self append: #assign