accessing
reset		"WebServer reset"
	"Reset the default WebServer instance."

	default ifNotNil:[
		default destroy.
		default := nil.
	].