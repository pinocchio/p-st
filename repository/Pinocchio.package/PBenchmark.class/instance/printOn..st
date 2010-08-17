as yet unclassified
printOn: aStream
	| significantDigits avg stdev |
	aStream << self class name.
	"only print significant "
	significantDigits := self significantDigits.
	"round to significantDigits"
	avg := self average roundTo: (0.1 raisedTo: significantDigits).
	stdev := self stdev roundTo: (0.1 raisedTo: significantDigits).
	aStream << $( << avg << ' ±' << stdev << $).