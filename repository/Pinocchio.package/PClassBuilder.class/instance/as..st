initialize-release
as: closure
	| code |
	code := closure code.
	context := PBuilderContext new: code locals size.
	code locals withIndexDo: [ :local :index |
		context at: index put: (PSlotBuilder named: local name).
	].
	context scopeId: closure context scopeId + 1.
	self visitCode: code.
	context inspect