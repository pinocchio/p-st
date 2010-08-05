as yet unclassified
readTest
	| pdict sdict dict |
	pdict := self readTestFor: PDictionary.
	dict := self readTestFor: Dictionary.
	(CodeHolder new contents: 'PDict: ' , pdict asString , String cr , 'Dict:  ' , dict asString)
		openLabel: 'Read Test Results'
		wrap: false