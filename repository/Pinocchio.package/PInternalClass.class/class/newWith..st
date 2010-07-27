as yet unclassified
newWith: cls
	<preventExport>
	^ (super newWith: cls)
		pclass: cls;
		uid: cls pClassName;
		methodProvider: cls