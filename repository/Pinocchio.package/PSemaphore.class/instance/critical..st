mutual exclusion
critical: aBlock
	| v |
	"we spin on the lock until we can enter the semaphore"
	[ lock testAndSet ] whileTrue: [ PThread current yield ].

	"we evaluate the block and make sure we set the flag to false when we leave it"
	[ v := aBlock value. ] ensure: [ lock value: false ].

	^ v.