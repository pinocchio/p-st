pharo-exporting
newWith: cls
	<preventExport>
	^ (super newWith: cls)
		pclass: cls;
		uid: cls pClassName;
		methodProvider: cls