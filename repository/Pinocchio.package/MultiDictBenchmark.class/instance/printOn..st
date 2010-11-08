as yet unclassified
printOn: aStream
	| pRun sRun |
	self selectors do: [ :selector|
		aStream << selector << ' '.
		self sizes do: [ :size|
			pRun := (pResults at: selector) at: size.
			sRun := (stResults at: selector) at: size.
			aStream << size << ' ['.
			aStream << pRun average << ' ±' << pRun stdev.
			aStream << ' | '.
			aStream << sRun average << ' ±' << sRun stdev.
			aStream << '] | '.
			]]