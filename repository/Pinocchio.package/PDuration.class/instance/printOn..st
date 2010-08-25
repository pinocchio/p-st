operations
printOn: aStream
	"Format as per ANSI 5.8.2.16: [-]D:HH:MM:SS" 	| d h m s |
	d := self days abs.
	h := self hours abs.
	m := self minutes abs.
 	s := self seconds abs.
	self negative ifTrue: [ aStream << $- ].
	d printOn: aStream. aStream << $:.
	h < 10 ifTrue: [ aStream << $0. ].
	h printOn: aStream. aStream << $:.
	m < 10 ifTrue: [ aStream << $0. ].
	m printOn: aStream. aStream << $:.
	s < 10 ifTrue: [ aStream << $0. ].
	s printOn: aStream.