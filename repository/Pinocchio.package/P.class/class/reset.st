as yet unclassified
reset
	PRootScope initializeGlobals.
	PObject allSubclasses do: [ :cls|
		cls UIDCounter: 0.
	].
	PSymbol clearSymbolCache.
	SCParser reset.
	