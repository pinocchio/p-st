pharo-exporter
uid
	<preventExport>
	uid ifNotNil: [ ^ uid ].
	"create a default name from the class name"
	self halt.
	^ self sclass name