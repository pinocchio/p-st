accessing
lookupNamed: aSymbol
	self halt.	"For now return nil for easier exporting"
	^ decls at: aSymbol ifAbsent: [ ^ nil ]