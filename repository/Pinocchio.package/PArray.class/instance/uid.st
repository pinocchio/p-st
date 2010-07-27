accessing
uid
	<preventExport>
	self isEmpty
		ifTrue: [ ^ 'empty_Array' ].
	uid ifNil: [ uid := self class uidFor: self ].
	^ uid