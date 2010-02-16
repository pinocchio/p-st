pharo-exporting
uid
	<preventExport>
	uid ifNil: [ uid := self class uidFor: self].
	^ uid.