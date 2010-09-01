errors
reportInternalServerError: errReport label: errLabel request: aRequest
	"Report an internal server error"

	| errLog |
	errLog := '<html><head><title>500 Internal Server Error</title></head><body>',
		'<h1>Internal Server Error: ', errLabel,'</h1><pre>',
		(errReport  copyReplaceAll: String cr with: String crlf),
		'</pre></body></html>'.

	aRequest sendResponseCode: 500
				content: errLog "squeakToUtf8"
				type: 'text/plain; charset=utf-8'
				close: true.
