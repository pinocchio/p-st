accessing
rawIdFor: anObject
	^[ (anObject accept: self) asSymbol ] 
		on: MessageNotUnderstood 
		do: [ self rawDefaultIdFor: anObject ].