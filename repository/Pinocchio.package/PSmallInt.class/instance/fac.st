bit manipulation
fac 
	self > 1 ifFalse: [ ^ 1 ].
	^ self * (self - 1) fac