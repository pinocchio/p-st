as yet unclassified
initializeLinks
	self link: Object to: PObject.
	self link: Class to: PClass uid: #class.
	self link: Metaclass to: PMetaclass uid: #metaclass.
	(self linkAll: {Behavior. ClassDescription} to: PBehavior) uid: #behavior.
	(self link: UndefinedObject to: PNil) name: #Nil asPObject; declareClass: true. 
	self link: Dictionary to: PDictionary.
	self link: Array to: PArray.
	(self link: Set to: PSet) declareClass: true.
	self link: Dictionary to: PDictionary.
	(self link: Boolean to: PBoolean) declareClass: true.
	(self link: True to: PTrue) declareClass: true.
	(self link: False to: PFalse) declareClass: true.
	(self linkAll: {String. ByteString. WideString} to: PString) customLayout: true; declareClass: true.
	(self linkAll: {Symbol. ByteSymbol. WideSymbol} to: PSymbol) customLayout: true.
	(self link: Character to: PCharacter) declareClass: true.
	(self link: SmallInteger to: PSmallInt) customLayout: true.
	self link: ProtoObject to: nil.
	
	self pInternalClassFrom: PDictBucket.
	self pInternalClassFrom: PBytesLayout.
	self pInternalClassFrom: PWordsLayout.
	self pInternalClassFrom: PIntLayout.
	self pInternalClassFrom: PObjectLayout.
	self pInternalClassFrom: PArrayLayout.
	self pInternalClassFrom: PSlot.