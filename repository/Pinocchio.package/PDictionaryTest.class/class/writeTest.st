as yet unclassified
writeTest
	| pdict sdict dict |
	pdict := self writeTestFor: PDictionary.
	dict := self writeTestFor: Dictionary.
	(CodeHolder new
		contents: 'PDict' , pdict asString , String cr , 'Dict: ' , dict asString)
		openLabel: 'Write Test Results'
		wrap: false