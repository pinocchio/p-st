responses
send404Response: body
	"Send a 404 not found response"

	^self 
		send404Response: body 
		do: [ :resp | resp headerAt: 'Content-Type' put: 'text/html; charset=utf-8' ]