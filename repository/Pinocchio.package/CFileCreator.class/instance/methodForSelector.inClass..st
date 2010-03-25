converting
methodForSelector: aSymbol inClass: aPClass
	^ aPClass methodProvider class methodDict at: aSymbol ifAbsent: [ ^ nil ]