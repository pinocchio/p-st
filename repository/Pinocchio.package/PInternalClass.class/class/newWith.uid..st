pharo-exporting
newWith: cls uid: id
	^ self
		newWith: cls
		exporting: cls
		uid: id.