visiting
visitSend: send
	|result|
	result := self visitSuper: send.
	result receiver: (send receiver accept: self).
	^ result