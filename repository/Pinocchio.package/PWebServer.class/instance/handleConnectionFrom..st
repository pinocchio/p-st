handling
handleConnectionFrom: aSocket
	| stream request |

	"Read the request from the socket, and dispatch it.
	Since we've been forked already it's okay to block."
	[
		certName ifNil:["Regular request"
			stream := PSocketStream on: aSocket.
		] ifNotNil:["SSL/TLS"
		"DG: no support for SSL in Pinocchio"
			self error: 'No support for SSL in Pinocchio'.
		"	| ssl |
			ssl := Smalltalk at: #SqueakSSL ifAbsent:[self error: 'SqueakSSL not installed'].
			stream := ssl secureSocketStream on: aSocket.
			[stream sslAccept: certName] on: Error do:[^stream destroy]."
		].

		[aSocket isConnected] whileTrue:[

			"Read the next request from the connection. If the connection is closed,
			or if a network error occurs, or the read times out, just close the connection
			without further ado (rather than logging an error). Any other error resulting
			from parsing the input is treated as a 400 bad request."

			stream peek ifNil:[^aSocket destroy].
			self warn: 'WebServer>>handleConnectionFrom:: peek successful'.
			request := self newRequest.
			self warn: 'WebServer>>handleConnectionFrom:: request created'.
			[request readFrom: stream] on: PError do:[:ex| 
			"DG: reenable once support PNetworkError is there"
				"(ex isKindOf: PNetworkError) ifFalse:[
					[request send400Response] on: PError do:[ :ignore | ].
				]."
				^aSocket destroy].

			self warn: 'WebServer>>handleConnectionFrom:: request read in successfully'.
			self dispatchRequest: request.
		].
	] on: PError do:[:ex|"(ex isKindOf: PNetworkError) ifFalse:[" ex signal"]"].