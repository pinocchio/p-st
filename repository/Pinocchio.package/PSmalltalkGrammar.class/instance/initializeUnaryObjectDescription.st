expression
initializeUnaryObjectDescription
	^ (PEGMultiParser
		named: 'UNARY-OBJECT-DESCRIPTION'
		parsing: self primary & self unarySelector times) memo