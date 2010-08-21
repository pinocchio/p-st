as yet unclassified
printOn: aStream
	| significantDigits quantum total stdev totalSignificantDigits|
	"only print significant "
	significantDigits := self significantDigits.
	quantum := 0.1 raisedTo: significantDigits.
	"round to significantDigits"
	stdev := self stdev roundTo: quantum.
	total := (self total roundTo: quantum) asString.
	totalSignificantDigits := total size - (total indexOf: $.).
	aStream << '(' << total.
	"check if the last digit is 0 => padding"
	(totalSignificantDigits < significantDigits) ifTrue: [
	 	(significantDigits - totalSignificantDigits) 
			timesRepeat: [ aStream << '0']].
	aStream << ' ±' << stdev << $).