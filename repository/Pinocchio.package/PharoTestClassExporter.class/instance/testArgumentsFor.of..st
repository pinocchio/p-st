convenience
testArgumentsFor: aPMethod of: aCompileMethod 
	| pragma arguments firstKeyword |
	"make sure that the test methods have the number of args in the first annotation"
	"firstKeyword := aPMethod annotations first keywords first constant asSymbol.
	(firstKeyword  = #arg1 or: [ firstKeyword = #arg])
		ifFalse: [^ Array new]."
	aCompileMethod pragmas do: [ :aPragma | 
			(aPragma keyword beginsWith: 'arg1')
				ifTrue: [ ^ aPragma arguments ] ].
	^ Array new: 0