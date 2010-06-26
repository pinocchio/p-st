expression
preStorePrimary
	^ parsers at: #primary ifAbsentPut: [ PEGMemo named: 'PRIMARY' ]