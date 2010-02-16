pharo-exporter
pInstVarNames
	<preventExport>
	(self pclass respondsTo: #pInstVarNames) ifTrue: [ 
		^ self pclass pInstVarNames
	].
	^ OrderedCollection new.