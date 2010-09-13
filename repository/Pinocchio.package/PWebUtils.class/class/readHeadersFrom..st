headers
readHeadersFrom: aStream
	"Parse http headers and answer a collection of key -> value pairs."

	| headers nextLine existing |
	headers := OrderedCollection new.
	[nextLine := aStream upToAll: PString crlf.
	nextLine isEmpty] whileFalse:[
		nextLine first isSeparator ifTrue:["Continuation as per HTTP 1.1 spec"
			existing := headers last.
			existing value: (existing value, PString space, nextLine withBlanksTrimmed).
		] ifFalse:["Regular header"
			headers add: 
				(PAssociation basicNew
					key: (nextLine copyUpTo: $:) asLowercase
					value: (nextLine copyAfter: $:) withBlanksTrimmed)
		].
	].
	^headers