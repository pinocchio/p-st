testing
isPersistent
	"Return true if this is a persistent connection"

	"Check for explicit connection headers"
	((self headerAt:'Connection') asLowercase = 'close' asLowercase) ifTrue:[^false].
	((self headerAt:'Connection') asLowercase = 'keep-alive' asLowercase) ifTrue:[^true].

	"Defaults for various versions"
	(self protocol = 'HTTP/1.0') ifTrue:[^false].
	(self protocol = 'HTTP/1.1') ifTrue:[^true].

	"Assume that later HTTP versions are compatible with 1.1"
	^true