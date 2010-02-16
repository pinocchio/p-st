convenience
testArgumentsFor: aPMethod of: aCompileMethod 
	| pragma arguments firstKeyword |
	aPMethod annotations isEmpty  ifTrue: [
		^ Array new.
	].
	"make sure that the test methods have the number of args in the first annotation"
	firstKeyword := aPMethod annotations first keywords first constant asSymbol.
	(firstKeyword  = #arg1 or: [ firstKeyword = #arg])
		ifFalse: [^ Array new].
	^ (aCompileMethod literals select: [ :each|
			each isKindOf: AdditionalMethodState
		]) first pragmas first arguments.