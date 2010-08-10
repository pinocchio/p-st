*Pinocchio
inspectChildren
	| children |
	children := Array new: self size.
	self withIndexDo: [ :value :index |
		children at: index put: (index@value) ].
	^ children