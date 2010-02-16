selector
initializeKeyword
	^ self identifier && (':' asPEG omit: true)