pharo-exporter
pclass: anObject
	<preventExport>
	instance := anObject.
	anObject superclass class = PNil ifTrue: [ ^ self ].
	superclass := anObject superclass pmetaclass