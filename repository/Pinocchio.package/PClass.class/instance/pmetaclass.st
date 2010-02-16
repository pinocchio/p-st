pharo-exporter
pmetaclass
	<preventExport>
	pmetaclass ifNil: [ pmetaclass := self createPMetaclass].
	^ pmetaclass