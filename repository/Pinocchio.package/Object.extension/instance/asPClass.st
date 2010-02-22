*Pinocchio
asPClass
	"TODO: FIXME mapping to internal classes doesn't work properly''"
	|dict|
	dict := {nil}.
	(dict at: 1) ifNil: [
		dict at: 1 put: (
			Dictionary new
				at: Object 			put: PObject;
				at: Class 			put: PClass;
				at: Metaclass 		put: PMetaclass;
				at: Behavior 	 	put: PBehavior;
				at: UndefinedObject 	put: PNil;
				at: Dictionary  	 	put: PDictionary;
				at: Array 			put: PArray;
				at: Boolean 			put: PBoolean;
				at: True 			put: PTrue;
				at: False 			put: PFalse;
				at: String 			put: PString;
				at: Symbol 			put: PSymbol;
				at: Character 		put: PCharacter;
				at: SmallInteger 	put: PSmallInt;
				yourself) ].

	dict := dict at: 1.
					
	dict at: self ifPresent: [ :aClass |
		^ aClass asPClass.
	].
	^ PClass newWith: self.