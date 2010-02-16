expression
preStoreBinaryObjectDescription
	^ parsers at: #binaryObjectDescription ifAbsentPut: [
		PEGParser named: 'BINARY-OBJECT-DESCRIPTION'
	]