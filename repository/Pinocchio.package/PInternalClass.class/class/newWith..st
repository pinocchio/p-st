pharo-exporting
newWith: cls
	^ (super newWith: cls)
		pclass: cls;
		uid: cls pClassName;
		methodProvider: cls