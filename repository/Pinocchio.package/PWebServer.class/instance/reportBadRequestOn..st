errors
reportBadRequestOn: aSocket
	"Report a bad request back to the client"
	| message |
	message := '<html><head><title>400 Bad Request</title></head><body>',
		'<h1>Bad Request</h1>
		<p>The server encountered a request it did not understand.
		</body></html>'.
	[aSocket sendData: 'HTTP/1.0 400 Bad Request', String crlf,
			'Content-Type:	text/html; charset=utf-8', String crlf,
			'Connection: close', String crlf,
			'Content-Length: ', message size asString, String crlf,
			String crlf, message] on: Error do:[].