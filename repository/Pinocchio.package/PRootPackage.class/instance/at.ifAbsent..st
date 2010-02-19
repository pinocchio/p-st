accessing
at: index ifAbsent: block
	^ members at: index asSymbol ifAbsent: block