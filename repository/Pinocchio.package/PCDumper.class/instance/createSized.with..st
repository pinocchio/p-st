convenience
createSized: arrayedObject with: aString 
	self put: arrayedObject 
		with: ( arrayedObject inject: aString, ', ', arrayedObject size asString
			into: [ :str :element|
				str,', ', element uid asString
			]), ')'