as yet unclassified
loadEnvironment
	| env parser value |
	env := self environ.
	bindings := PDictionary new.
	parser := PEGMultiParser 
		named: 'ENTRY'
		parsing: (($= asPEG not consume) strongTimes && $= && [ :scanner | scanner upToEnd ])
		semantics: [ :nv |
			value := nv removeLast.
			bindings at: nv asSymbol put: value ].
	env do: [ :entry |
		parser parse: entry ]