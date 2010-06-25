literal
initializeNumberFormat
	| sign number |
	"TODO clean the semantics! "
	^ PEGMultiParser
		named: 'NUMBER-FORMAT'
		parsing: '-' asPEG optional & (self decimalDigit | self uppercase) strongPlus
		semantics: [ :result |
			(result at: 1)
				ifMatched: [ :m |
					result at: 1 put: m.
					String newFrom: result ]
				ifFailed: [ String newFrom: (result copyFrom: 2) ] ]