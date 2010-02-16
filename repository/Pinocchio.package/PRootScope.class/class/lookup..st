accessing
lookup: anASTVariable
	"For now return nil for easier exporting"
	^ decls at: anASTVariable name ifAbsent: [ ^ nil]