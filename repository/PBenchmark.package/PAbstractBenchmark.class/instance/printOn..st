printing
printOn: aStream
	| significantDigits quantum total stdev totalSignificantDigits|
	"only print significant "
	significantDigits := self significantDigits.
	quantum := (1/10 asFloat) raisedTo: significantDigits.
	"round to significantDigits"
	stdev := self confidenceVariance roundTo: quantum.
	total := (self total roundTo: quantum) printString.
	totalSignificantDigits := total size - (total indexOf: $.).
	aStream << total.
	"check if the last digit is 0 => padding"
	(totalSignificantDigits < significantDigits) ifTrue: [
	 	(significantDigits - totalSignificantDigits) 
			timesRepeat: [ aStream << '0']].
	aStream << ' +/-' << stdev.