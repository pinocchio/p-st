as yet unclassified
writeTest
	| pdict sdict dict |
	TimeProfileBrowser spyOn: [
		pdict := self writeTestFor: PDictionary.
	].
	dict := self writeTestFor: Dictionary.
	sdict := self writeTestFor: SmallDictionary.
	(CodeHolder new contents: ( 'PDict', pdict asString, String cr,
								'Dict: ', dict asString, String cr,
								'SDict: ', sdict asString))
		openLabel: 'Write Test Results' wrap: false.
	