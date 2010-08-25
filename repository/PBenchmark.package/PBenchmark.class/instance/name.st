accessing
name
	| className |
	className := self class name.
	"(className endsWith: #Benchmark) ifTrue: [ ^ className copyFrom: 1 to: className size - 9 ]."
	^ className.