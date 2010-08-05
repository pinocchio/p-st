as yet unclassified
includesTest
	| pdict dict |
	pdict := self includesTestFor: PDictionary.
	dict := self includesTestFor: Dictionary.
	(CodeHolder new
		contents: 'PDict' , pdict asString , String cr , 'Dict: ' , dict asString)
		openLabel: 'Includes Test Results'
		wrap: false