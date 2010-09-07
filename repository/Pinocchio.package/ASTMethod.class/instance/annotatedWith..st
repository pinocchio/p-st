testing
annotatedWith: selector
	^ self annotations anySatisfy: [ :annotation | annotation selector == selector ]