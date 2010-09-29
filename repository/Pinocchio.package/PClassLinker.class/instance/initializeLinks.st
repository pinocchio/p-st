as yet unclassified
initializeLinks
	self link: ProtoObject to: nil.
	(self link: Object to: PObject) declareClass: false.
	(self link: Class to: PClass) declareClass: false.
	(self link: Metaclass to: PMetaclass) declareClass: false.
	(self linkAll: {Behavior. ClassDescription} to: PBehavior) declareClass: false.
	(self link: Dictionary to: PDictionary) declareClass: false.
	(self link: IdentityDictionary to: PIdentityDictionary) declareClass: false.
	(self link: Array to: PArray) declareClass: false.
	(self link: SmallInteger to: PSmallInt) customLayout: true; declareClass: false.
	(self link: Float to: PFloat) customLayout: true.
	(self linkAll: {String. ByteString. WideString} to: PString) customLayout: true.
	(self linkAll: {Symbol. ByteSymbol. WideSymbol} to: PSymbol) customLayout: true; declareClass: false.
	(self link: Character to: PCharacter) customLayout: true.
	(self pInternalClassFrom: PSlot) declareClass: false.
	(self pInternalClassFrom: PMethodDictionary) declareClass: false.
	self link: UndefinedObject to: PNil. 
	self link: Set to: PSet.
	self link: Boolean to: PBoolean.
	self link: True to: PTrue.
	self link: False to: PFalse.
	self link: WriteStream to: PWriteStream.
	self link: ReadStream to: PReadStream.
	self link: IdentitySet to: PIdentitySet.
	
	self link: Time to: PTime.
	self link: Timespan to: PTimespan.
	self link: Date to: PDate.
	self link: Month to: PMonth.
	self link: DateAndTime to: PDateAndTime.
	self link: Duration to: PDuration.
	
	self link: Semaphore to: PSemaphore.
	self link: Mutex to: PMutex.
	
	self link: Text to: PText.
	
	(self pInternalClassFrom: PDictBucket) declareClass: false.
	
	self initializeLayoutLinks.
	self initilizeTestingLinks.