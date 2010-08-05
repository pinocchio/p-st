as yet unclassified
includesTest
	| pdict sdict dict |
	pdict := self includesTestFor: PDictionary.
	dict := self includesTestFor: Dictionary.
	sdict := self includesTestFor: SmallDictionary.
	(CodeHolder new
		contents: 'PDict' , pdict asString , String cr , 'Dict: ' , dict asString , String cr , 'SDict: ' , sdict asString)
		openLabel: 'Includes Test Results'
		wrap: false