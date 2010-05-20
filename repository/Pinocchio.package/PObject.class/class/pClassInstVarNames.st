exporting
pClassInstVarNames
	<preventExport>
	^ self = PObject
		ifTrue: [
			OrderedCollection new
				add: #layout;
				add: #superclass;
				add: #methods;
				add: #name;
				add: #package;
				yourself ]
		ifFalse: [
			OrderedCollection new ]