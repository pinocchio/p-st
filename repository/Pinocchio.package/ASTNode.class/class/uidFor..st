accessing
uidFor: aNode
	uidCounter := self uidCounter +1.
	^ (aNode astName asLowercase, uidCounter printString) asString