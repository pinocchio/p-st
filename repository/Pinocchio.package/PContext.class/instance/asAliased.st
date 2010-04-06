aliasing
asAliased
	| context |
	context := self species new: (self size).
	context returnContext: returnContext.
	context captured: captured.
	context closure: closure.
	self withIndexDo: [ :arg :index |
		context at: index put: (arg asAllocationAlias: context)
	].
	^ context 