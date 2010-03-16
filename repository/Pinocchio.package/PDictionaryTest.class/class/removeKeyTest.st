as yet unclassified
removeKeyTest
	| pdict sdict dict |
	MessageTally spyOn: [
		pdict := self removeKeyTestFor: PDictionary.
	].
	dict := self removeKeyTestFor: Dictionary.
	sdict := self removeKeyTestFor: SmallDictionary.
	(CodeHolder new contents: ( 'PDict', pdict asString, String cr,
								'Dict: ', dict asString, String cr,
								'SDict: ', sdict asString))
		openLabel: 'Remove Test Results' wrap: false.
	