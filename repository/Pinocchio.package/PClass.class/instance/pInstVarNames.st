pharo-exporter
pInstVarNames
	<preventExport>
	(self sclass respondsTo: #pInstVarNames)
		ifTrue: [ ^ self sclass pInstVarNames ].
	^ self sclass instVarNames