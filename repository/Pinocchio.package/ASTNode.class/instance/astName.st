accessing
astName
	^ (self class name 
			copyFrom: 4
			to: self class name size) capitalized