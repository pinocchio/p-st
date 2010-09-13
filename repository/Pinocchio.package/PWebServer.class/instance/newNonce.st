authentication
newNonce
	| nonce |
	nonce := UUID new hex.
	mutex critical:[
		nonceCache at: nonce put: (Array with: '' with: Time totalSeconds + self nonceDeadline ).
	].
	^nonce