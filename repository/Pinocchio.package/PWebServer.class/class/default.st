accessing
default
	"A default WebServer instance. Mostly for the examples."

	^default ifNil:[default := self new].