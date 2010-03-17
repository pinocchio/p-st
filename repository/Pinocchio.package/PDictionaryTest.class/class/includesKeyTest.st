as yet unclassified
includesKeyTest
	| pdict sdict dict |
	TimeProfileBrowser spyOn: [
		pdict := self includesKeyTestFor: PDictionary.
	].
	dict := self includesKeyTestFor: Dictionary.
	"sdict := self includesKeyTestFor: SmallDictionary."
	(CodeHolder new contents: ( 'PDict', pdict asString, String cr,
								'Dict: ', dict asString, String cr))
		openLabel: 'Includes Key Test Results' wrap: false.
	