as yet unclassified
initializeLayoutLinks
	(self pInternalClassFrom: PArrayLayout) declareClass: false.
	(self pInternalClassFrom: PCharacterLayout) declareClass: false.
	(self pInternalClassFrom: PIntLayout) declareClass: false.
	(self pInternalClassFrom: PObjectLayout) declareClass: false.
	(self pInternalClassFrom: PWordsLayout) declareClass: false.
	
	(self pInternalClassFrom: PBytesLayout).