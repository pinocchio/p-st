authentication
newNonce
	| nonce |
	nonce := UUID new hex.
	mutex critical:[
		nonceCache at: nonce put: {''. Time totalSeconds + self nonceDeadline}.
	].
	^nonce