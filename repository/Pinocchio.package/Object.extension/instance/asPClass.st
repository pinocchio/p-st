*Pinocchio
asPClass
	<preventExport>
	"TODO: FIXME mapping to internal classes doesn't work properly''"
	"All the mappings of ST Class which are VM Internals is done here since we
	 need explicit Metaclass checks this is the cleanes way to do so with the least 
	code duplication.
	see 'PObject asPClass' for all Internal mappings for classes Pharo doesnt 
	know anything about"
	| dict uid |
	
	Transcript show: self name; cr.
	dict := #( nil ).
	(dict at: 1) ifNil: [ 
		dict at: 1 put:
			((Dictionary new)
				at: Object put: {PObject};
				at: Class put: {PClass. #class};
				at: Metaclass put: {PMetaclass. #metaclass};
				at: Behavior put: {PBehavior. #behavior};
				at: UndefinedObject put: {PNil};
				at: Dictionary put: {PDictionary};
				at: Array put: {PArray};
				at: Boolean put: {PBoolean};
				at: True put: {PTrue};
				at: False put: {PFalse};
				at: String put: {PString};
				at: Symbol put: {PSymbol};
				at: Character put: {PCharacter};
				at: SmallInteger put: {PSmallInt};
				yourself) ].
	dict := dict at: 1.
	dict at: self ifPresent: [ :description |
		description size = 1 
			ifTrue: [  uid := description first pClassName ] 
			ifFalse: [ uid := description second].
		^ PInternalClass newWith: self exporting: description first uid: uid  ].
	^ PClass newWith: self