accessing
fullName 
	parent == parent root ifTrue: [
		^ self packageName.
	].
	^ parent fullName asString , '.', self packageName