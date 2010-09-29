as yet unclassified
initializeUids
	{
	PClass 			-> #class.
	PBehavior 		-> #behavior.
	PMetaclass 	-> #metaclass.
	}
	do: [ :assoc |
		classNames
			at: (self pClassFrom: assoc key)
			put: assoc value ].
	
	{
	PSend.
	PObject.
	PDictionary.
	PIdentityDictionary.
	PSet.
	PSlot.
	PIdentitySet.
	PString.
	PSymbol.
	PVariable.
	PSelf.
	PMethod.
	PNativeMethod.
	PReflectionMethod.
	PWordsLayout.
	PFloatLayout.
	PObjectLayout.
	PIntLayout.
	PArrayLayout.
	PCharacterLayout.
	PDictBucket.
	PArray.
	PSmallInt.
	PFloat.
	PCharacter.
	PBlock.
	PTrue.
	PFalse.
	PNil.
	PCharacterTable.
	PMethodClosure.
	PBlockClosure.
	PContinue.
	PAssertionFailure.
	PInlineCache.
	PMessage.
	PUintSlot.
	PAnnotation.
	PMethodContext.
	PBlockContext.
	PUndefinedClassReference.
	PPointerSlot.
	PAbstractSlot.
	PThread.
	PContext.
	PContinuation.
	PClassReference.
	PAssign.
	PSuper.
	PInfo.
	PConstant.
	PMethodDictionary.
	PRecursiveDoesNotUnderstand.
	}
	do: [ :cls |
		classNames
			at: (self pClassFrom: cls)
			put: (self shortTypeNameFor: cls) ]