as yet unclassified
initializeLinks
	self link: ProtoObject to: nil.
	(self link: Object to: PObject) declareClass: false.
	(self link: Class to: PClass uid: #class) declareClass: false.
	(self link: Metaclass to: PMetaclass uid: #metaclass) declareClass: false.
	(self linkAll: {Behavior. ClassDescription} to: PBehavior) uid: #behavior; declareClass: false.
	(self link: Dictionary to: PDictionary) declareClass: false.
	(self link: Array to: PArray) declareClass: false.
	(self link: SmallInteger to: PSmallInt) customLayout: true; declareClass: false.
	(self link: Float to: PFloat) customLayout: true.
	(self linkAll: {String. ByteString. WideString} to: PString) customLayout: true.
	(self linkAll: {Symbol. ByteSymbol. WideSymbol} to: PSymbol) customLayout: true; declareClass: false.
	(self link: Character to: PCharacter) customLayout: true.
	(self pInternalClassFrom: PSlot) declareClass: false.
	self link: UndefinedObject to: PNil. 
	self link: Set to: PSet.
	self link: Boolean to: PBoolean.
	self link: True to: PTrue.
	self link: False to: PFalse.
	self link: WriteStream to: PWriteStream.
	
	self link: Time to: PTime.
	self link: Timespan to: PTimespan.
	self link: Date to: PDate.
	self link: Month to: PMonth.
	self link: DateAndTime to: PDateAndTime.
	self link: Duration to: PDuration.
	
	self link: Semaphore to: PSemaphore.
	self link: Mutex to: PMutex.
	
	self link: WebSocket to: PWebSocket.
"	self link: WebServer to: PWebServer."
	
	self link: Text to: PText.
	
	(self pInternalClassFrom: PDictBucket) declareClass: false.
	
	self initializeLayoutLinks.
	self initilizeTestingLinks.