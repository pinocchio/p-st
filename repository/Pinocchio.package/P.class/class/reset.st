as yet unclassified
reset
	PClassLinker initialize.
	PSymbol clearSymbolCache.
	PSmalltalkGrammar reset.
	PSmalltalkParser reset.
	PEGParser reset.
	PRootScope clearGlobals.