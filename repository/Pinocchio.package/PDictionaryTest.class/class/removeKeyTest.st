as yet unclassified
removeKeyTest
	| pdict dict |
	pdict := self removeKeyTestFor: PDictionary.
	dict := self removeKeyTestFor: Dictionary.
	(CodeHolder new
		contents: 'PDict' , pdict asString , String cr , 'Dict: ' , dict asString)
		openLabel: 'Remove Test Results'
		wrap: false