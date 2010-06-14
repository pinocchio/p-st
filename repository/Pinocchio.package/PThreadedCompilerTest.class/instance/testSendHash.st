tests
testSendHash
	| code |
	code := self ast: '^ 1 hash'.
	code size should be: 4.
	code first should be: #'push_1'.
	code next should be: #'send_hash'.
	code next class should be: PSend.
	code next should be: #return.
	