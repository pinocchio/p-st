private
handleMessage: msgData type: msgType
	"Handle an incoming message of the given type"

	^messageBlock ifNotNil:[
		messageBlock valueWithPossibleArgs: (Array with: msgData with: msgType with: self)
	].