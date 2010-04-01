interpreting
interpret: closures
	stepBlock := [ :receiver :class :message :action |
		results put: (receiver@class@message).
		self show: continuations position asString, ': ', receiver class name, '@', class name, '>>', message.
		self interpretNext.
		results put: action value.
		self show: continuations position asString, '  --> ', results current inspectName.
		self interpretNext.
		results current
	].
	results := PStatefulArray new: closures size.
	continuations := PStatefulArray new: closures size.
	closures do: [ :aClosure |
		PContinuation on: [ :startNext |
			continuations nextPut: (startNext@nil).
			^ super interpret: aClosure.
		]
	]