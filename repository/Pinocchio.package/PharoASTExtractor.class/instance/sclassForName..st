extracting
sclassForName: aString 
	
	^ (Smalltalk at: aString asSymbol) asPClass sclass.