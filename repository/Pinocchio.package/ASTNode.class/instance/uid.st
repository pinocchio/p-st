accessing
uid
	uid isNil ifTrue: [ uid := self class uidFor: self].
	^ uid