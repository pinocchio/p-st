as yet unclassified
pinocchioNameFor: aClass
	^ (String streamContents: [ :s | instance pinocchioNameFor: aClass on: s ]) asSymbol