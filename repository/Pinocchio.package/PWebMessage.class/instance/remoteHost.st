accessing
remoteHost
	"Return the name of the remote host"

	(stream isKindOf: PSocketStream) ifFalse:[^nil]. "don't have it"

	^ stream socket remoteAddress.
	"^String streamContents:[:s|
		stream socket remoteAddress
			do:[:b| s print: b] separatedBy:[s nextPut: $.]]."