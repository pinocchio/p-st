printing
putOn: aStream 
	aStream nextPutAll: '$'''.
	aStream nextPut: self.
	aStream nextPut: ''''.