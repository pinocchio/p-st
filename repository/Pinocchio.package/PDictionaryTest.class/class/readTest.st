as yet unclassified
readTest
	| pdict sdict dict |
	pdict := self readTestFor: PDictionary.
	sdict := self readTestFor: SmallDictionary.
	dict := self readTestFor: Dictionary.
	(CodeHolder new contents: ( ' ', pdict asString, String cr,dict asString, String cr, sdict asString))
		openLabel: 'Read Test Results' wrap: false.
	