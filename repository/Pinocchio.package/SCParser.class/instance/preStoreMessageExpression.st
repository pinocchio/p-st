expression
preStoreMessageExpression
	^ parsers at: #messageExpression ifAbsentPut: [
		PEGParser named: 'MESSAGE-EXPRESSION'
	]