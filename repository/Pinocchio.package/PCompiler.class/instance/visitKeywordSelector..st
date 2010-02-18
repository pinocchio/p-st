visitor
visitKeywordSelector: anASTKeywordSelector 
	"TODO maybe create specific class"
	^ anASTKeywordSelector selector asPSymbol
	"^ (anASTKeywordSelector keywords inject: '' into: [ :string :each|
			string, each, ':'
		]) asPSymbol "