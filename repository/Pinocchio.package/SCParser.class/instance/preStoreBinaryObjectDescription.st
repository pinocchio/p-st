expression
preStoreBinaryObjectDescription
	^ parsers at: #binaryObjectDescription ifAbsentPut: [ PEGMemo named: 'BINARY-OBJECT-DESCRIPTION' ]