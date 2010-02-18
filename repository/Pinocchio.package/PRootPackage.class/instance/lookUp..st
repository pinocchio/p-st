accessing
lookUp: aSymbol
	^ self lookUpIn: (( '-' split: aSymbol) collect: [ :each| each asSymbol asPObject ]) at: 1
	
	