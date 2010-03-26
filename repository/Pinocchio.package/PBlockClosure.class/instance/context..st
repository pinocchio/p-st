accessing
context: aContext
	PFile stderr: 'Setting context to: '.
	StdInspector new shallowInspect: aContext.
	context := aContext