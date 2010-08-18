accessing
lookup: aPath
	| package |
	package := self findName: aPath first asSymbol.
	package ifNil: [ ^ self flagUndefinedPath: aPath at: 1 ].
	^ package lookupIn: aPath at: 2