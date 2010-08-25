private
handleError: exception
	"Handle an error"

	^errorBlock ifNotNil:[
		errorBlock valueWithPossibleArgs: (Array with: exception with: self)
	].