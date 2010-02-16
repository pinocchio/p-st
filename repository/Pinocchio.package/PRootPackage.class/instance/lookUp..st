accessing
lookUp: aSymbol
	^ self lookUpIn: (( '-' split: aSymbol) collect: [ :each| each asPSymbol ]) at: 1
	
	