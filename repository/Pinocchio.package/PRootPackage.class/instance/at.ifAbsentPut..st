accessing
at: index ifAbsentPut: block
	^ members at: index asSymbol ifAbsentPut: block