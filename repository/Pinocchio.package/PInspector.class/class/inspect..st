inspecting
inspect: anObject
	inspector ifNil: [ inspector := self new ].
	inspector inspect: anObject.