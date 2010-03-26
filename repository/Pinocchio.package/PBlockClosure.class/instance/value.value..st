accessing
value: anArg value: otherArg
	<pinocchioReflective: #blockclosureValue:message:>
	^ self valueWithArguments: (Array with: anArg with: otherArg)