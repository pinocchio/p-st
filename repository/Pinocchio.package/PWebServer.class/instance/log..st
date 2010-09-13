initialize
log: aString
	"Log the given information."

	logAction ifNotNil:[logAction valueWithArguments: (Array with: aString)].
