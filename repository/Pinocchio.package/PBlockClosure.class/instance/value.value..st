accessing
value: anArg value: otherArg
	<pinocchioReflective: #value:value:>
	^ self valueWithArguments: (Array with: anArg with: otherArg)