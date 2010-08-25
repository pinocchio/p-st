squeak protocol
printHMSOn: aStream
	"Print just hh:mm:ss" | h m s |
	h := self hours abs.
	m := self minutes abs.
 	s := self seconds abs.
	h < 10 ifTrue: [ aStream << $0. ].
	h printOn: aStream. aStream << $:.
	m < 10 ifTrue: [ aStream << $0. ].
	m printOn: aStream. aStream << $:.
	s < 10 ifTrue: [ aStream << $0. ].
	s printOn: aStream.
