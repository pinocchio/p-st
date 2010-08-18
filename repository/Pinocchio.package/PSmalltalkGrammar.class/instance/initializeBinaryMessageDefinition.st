selector
initializeBinaryMessageDefinition
	^ PEGMultiParser
		named: 'BINARY-ARGUMENT'
		parsing: self binarySelector & self parameterName