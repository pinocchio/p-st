accessing
basicPTypeName: aString
	^ aString, 
		'_', 
		(self name 
			copyFrom: ('p' size + 1)
			to: self name size) capitalized