visitor
visitKeywordSelector: anASTKeywordSelector 
	"TODO maybe create specific class"
	^ PSymbol named: 
		(anASTKeywordSelector keywords inject: '' into: [ :string :each|
			string, each, ':'
		])