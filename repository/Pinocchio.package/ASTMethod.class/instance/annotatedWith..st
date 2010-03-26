testing
annotatedWith: selector
	^ self annotations anySatisfy: [ :annotation | annotation selectorSymbol = selector ]