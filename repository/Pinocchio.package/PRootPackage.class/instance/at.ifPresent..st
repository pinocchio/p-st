accessing
at: index ifPresent: block
	^ members at: index asSymbol ifPresent: block