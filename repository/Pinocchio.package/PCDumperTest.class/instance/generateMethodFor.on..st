test-source-output
generateMethodFor: methodSelector on: outStream
	| method methodSourceString ast |
	method := self class methodDict at: methodSelector.
	methodSourceString := method getSource asString.
	ast := self ast: methodSourceString.
	dumper clear.
	dumper visitCollection: ast. 
	outStream nextPutAll: dumper asString.
