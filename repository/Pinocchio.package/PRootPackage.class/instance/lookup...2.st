accessing
lookup: aPath
	| package |
	package := self findName: aPath first asSymbol.
	^ package lookUpIn: aPath at: 2