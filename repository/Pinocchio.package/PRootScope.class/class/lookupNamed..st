accessing
lookupNamed: aSymbol
	"For now return nil for easier exporting"
	^ decls at: aSymbol ifAbsent: [ ^ nil]