private
handleClose
	"Handle a connection close"

	^closeBlock ifNotNil:[
		closeBlock valueWithPossibleArgs: (Array with: self)
	].