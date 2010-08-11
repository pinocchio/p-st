accessing
slot: name type: type
	slots at: name ifPresent: [ :slot | self raiseDuplicateSlot: slot ].
	slots at: name put: (type named: name).