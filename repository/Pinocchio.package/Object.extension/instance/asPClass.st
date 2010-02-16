*Pinocchio
asPClass
	"TODO: FIXME mapping to internal classes doesn't work properly''"
	|dict|
		dict := Dictionary new.
		dict at: Object 			put: {PObject. 		'Type_Object_Class'}.
		dict at: Class 			put: {PClass. 		'Class'}.
		dict at: Metaclass 		put: {PMetaclass. 	'Metaclass'}.
		dict at: Behavior 	 	put: {PBehavior. 	'Behavior'}.
		dict at: UndefinedObject 	put: {PDictionary. 	'Type_Nil_Class'}.
		dict at: Dictionary  	 	put: {PDictionary. 	'Type_Dictionary_Class'}.
		dict at: Array 			put: {PArray. 		'Type_Array_Class'}.
		dict at: Boolean 			put: {PBoolean. 		'Type_Boolean_Class'}.
		dict at: True 			put: {PTrue. 		'True_Class'}.
		dict at: False 			put: {PFalse. 		'False_Class'}.
		dict at: String 			put: {PString. 		'Type_String_Class'}.
		dict at: Symbol 			put: {PSymbol. 		'Type_Symbol_Class'}.
		dict at: Character 		put: {PCharacter.	'Type_Character_Class'}.
		dict at: SmallInteger 	put: {PSmallInt. 		'Type_SmallInt_Class'}.
					
	dict at: self ifPresent: [ :aTuple|
		^ PInternalClass newWith: self 
				exporting: aTuple first
				uid: aTuple second.
	].
	^ PClass newWith: self.