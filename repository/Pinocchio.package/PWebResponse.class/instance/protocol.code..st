initialize
protocol: respProtocol code: respCode
	"Initialize a response from protocol and code"

	code := respCode.
	protocol := respProtocol.
	status := protocol, ' ', code, ' ', (self class statusCodeAt: code).
	headers := OrderedCollection new.