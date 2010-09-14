class initialization
initialize
	"self initialize"

	statusCodes := Dictionary new
		"1xx: Meta status codes"
		at: 100 put: 'Continue';
		at: 101 put: 'Switching Protocols';
		at: 102 put: 'Processing';
		"2xx: Success status codes"
		at: 200 put: 'OK';
		at: 201 put: 'Created';
		at: 202 put: 'Accepted';
		at: 203 put: 'Non-Authoritative Information';
		at: 204 put: 'No Content';
		at: 205 put: 'Reset Content';
		at: 206 put: 'Partial Content';
		at: 207 put: 'Multi-Status'; 				"WebDav RFC: 2518"
		"3xx: Redirection status codes"
		at: 300 put: 'Multiple Choices';
		at: 301 put: 'Moved Permanently';
		at: 302 put: 'Moved Temporarily';
		at: 303 put: 'See Other';
		at: 304 put: 'Not Modified';
		at: 305 put: 'Use Proxy';
		at: 307 put: 'Temporary Redirect';
		"4xx: Client-Side Error status code"
		at: 400 put: 'Bad Request';
		at: 401 put: 'Unauthorized';
		at: 402	 put: 'Payment Required';
		at: 403	 put: 'Forbidden';
		at: 404	 put: 'Not Found';
		at: 405	 put: 'Method Not Allowed';
		at: 406	 put: 'Not Acceptable';
		at: 407	 put: 'Proxy Authentication Required';
		at: 408	 put: 'Request Timeout';
		at: 409	 put: 'Conflict';
		at: 410	 put: 'Gone';
		at: 411	 put: 'Lenght Required';
		at: 412	 put: 'Precondition Failed';
		at: 413	 put: 'Request Entity Too Large';
		at: 414	 put: 'Request-URI Too Long';
		at: 415	 put: 'Unsupported Media Type';
		at: 416	 put: 'Requested Range Not Satisfiable';
		at: 417	 put: 'Expectation Failed';
		at: 422	 put: 'Unprocessable Entity'; 		"WebDav RFC: 2518"
		at: 423	 put: 'Locked'; 					"WebDav RFC: 2518"
		at: 424	 put: 'Failed Dependency'; 		"WebDav RFC: 2518"
		"5xx: Server-Side Error status codes"
		at: 500	 put: 'Internal Server Error';
		at: 501	 put: 'Not Implemented';
		at: 502	 put: 'Bad Gateway';
		at: 503	 put: 'Service Unavailable';
		at: 504	 put: 'Gateway Timeout';
		at: 505	 put: 'HTTP Version Not Supported';
		at: 507	 put: 'Insufficient Storage'; 		"WebDav RFC: 2518"
		yourself.