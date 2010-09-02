initialize
close
	"Request graceful close"

	stream isConnected ifTrue:[
		stream nextPut: (PCharacter value: 255).
		stream nextPutAll: (PCharacter value: 0).
		stream flush.
	].